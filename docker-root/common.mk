# Copyright 2019 Colin Samples
#
# SPDX-License-Identifier: Apache-2.0
#

artifact-dir := target

# llvm_rev is from $(chrome-dir)/tools/clang/scripts/update.py
llvm_rev := 8455294f2ac13d587b13d728038a9bffa7185f2b
chrome_ver := 78.0.3904.97
# the rpm release number is hardcoded in
# $(chrome-dir)/chrome/installer/linux/common/installer.include, but it should
# be bumped when releasing a new rpm with the same version number
chrome_rpm_release := 1

chrome-file-name-base := chromium-browser-stable-$(chrome_ver)-$(chrome_rpm_release)
chrome-rpm-file-name := $(chrome-file-name-base).ppc64le.rpm
chrome-dist-file-name := $(chrome-file-name-base).tar.xz
chrome-rpm-artifact := $(artifact-dir)/$(chrome-rpm-file-name)
chrome-dist-artifact := $(artifact-dir)/$(chrome-dist-file-name)

llvm-dist-dir := clang+lld+llvm-$(llvm_rev)-ppc64le
llvm-dist-artifact := $(artifact-dir)/$(llmv-dist-base).tar.xz

