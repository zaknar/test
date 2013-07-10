# Inherit AOSP device configuration for toro.
$(call inherit-product, device/samsung/toro/full_toro.mk)

# Inherit CDMA common stuff
$(call inherit-product, vendor/revolt/configs/cdma.mk)

# Inherit common bits
$(call inherit-product, vendor/revolt/configs/common.mk)

# Inherit Verizon stuff
$(call inherit-product, vendor/revolt/configs/vzw.mk)

# toro Overlay
PRODUCT_PACKAGE_OVERLAYS += vendor/revolt/overlay/tuna

# PA OVERLAY_TARGET
OVERLAY_TARGET := pa_xhdpi

# Setup device specific product configuration.
PRODUCT_NAME := revolt_toro
PRODUCT_BRAND := google
PRODUCT_DEVICE := toro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

# Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=yakju BUILD_FINGERPRINT=google/yakju/toro:4.2.2/JDQ39/573038:user/release-keys PRIVATE_BUILD_DESC="yakju-user 4.2.2 JDQ39 573038 release-keys" BUILD_NUMBER=573038

# toro specific packages
PRODUCT_PACKAGES += \
    Thinkfree

# Copy Bootanimation
PRODUCT_COPY_FILES += \
    vendor/revolt/prebuilt/bootanimation/xhdpi/bootanimation.zip:system/media/bootanimation.zip
