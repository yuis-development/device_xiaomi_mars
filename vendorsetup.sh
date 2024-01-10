echo 'Starting to clone stuffs needed to build for Mars'

# Device common
echo 'Cloning Common device tree'
rm -rf device/xiaomi/mars
git clone --depth=1 https://github.com/ProjectElixir-Devices/device_xiaomi_mars -b udc-haydn device/xiaomi/mars

# Kernel
echo 'Cloning Kernel tree'
rm -rf kernel/xiaomi/mars
git clone --depth=1 https://github.com/ProjectElixir-Devices/kernel_xiaomi_mars -b udc  kernel/xiaomi/mars

# Vendor
echo 'Cloning Vendor tree'
rm -rf vendor/xiaomi/haydn
git clone --depth=1 https://github.com/yuis-development/vendor_xiaomi_mars -b udc vendor/xiaomi/mars

# Xiaomi
echo 'Cloning Hardware xiaomi'
rm -rf hardware/xiaomi
git clone --depth=1 https://github.com/LineageOS/android_hardware_xiaomi -b lineage-20 hardware/xiaomi

# Hardware-Display
rm -rf hardware/qcom-caf/sm8350/display
git clone --depth=1 https://github.com/Evolution-X/hardware_qcom-caf_sm8350_display -b udc hardware/qcom-caf/sm8350/display

# libprotobuf-ccq
rm -rf hardware/lineage/compat
git clone --depth=1 https://github.com/LineageOS/android_hardware_lineage_compat -b lineage-21.0 hardware/lineage/compat 

echo 'delete vendorsetup.sh from device tree once this is done'