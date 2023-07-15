#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from xcover5 device
$(call inherit-product, device/samsung/xcover5/device.mk)

PRODUCT_DEVICE := xcover5
PRODUCT_NAME := omni_xcover5
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G525N
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="xcover5kx-user 13 TP1A.220624.014 G525NKXU6CWF2 release-keys"

BUILD_FINGERPRINT := samsung/xcover5kx/xcover5:13/TP1A.220624.014/G525NKXU6CWF2:user/release-keys
