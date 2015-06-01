LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE        := raknet
LOCAL_ARM_MODE      := arm

include $(LOCAL_PATH)/cflags.mk

MY_PREFIX := $(LOCAL_PATH)/../Source/
MY_SOURCES := $(wildcard $(MY_PREFIX)*.cpp)

LOCAL_C_INCLUDES := $(LOCAL_PATH)/../Source
LOCAL_SRC_FILES  := $(MY_SOURCES:$(LOCAL_PATH)/%=%)

#include $(BUILD_SHARED_LIBRARY)

include $(BUILD_STATIC_LIBRARY)		# start building based on everything since CLEAR_VARS
