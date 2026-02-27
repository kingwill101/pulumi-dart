// ignore_for_file: unused_element, unnecessary_cast

import '../image_recipe_block_device_mapping_ebs/image_recipe_block_device_mapping_ebs.dart';

class ImageRecipeBlockDeviceMapping {
  /// Name of the device. For example, `/dev/sda` or `/dev/xvdb`.
  final String? deviceName;

  /// Configuration block with Elastic Block Storage (EBS) block device mapping settings. Detailed below.
  final ImageRecipeBlockDeviceMappingEbs? ebs;

  /// Set to `true` to remove a mapping from the parent image.
  final bool? noDevice;

  /// Virtual device name. For example, `ephemeral0`. Instance store volumes are numbered starting from 0.
  final String? virtualName;

  ImageRecipeBlockDeviceMapping({
    this.deviceName,
    this.ebs,
    this.noDevice,
    this.virtualName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deviceNameValue = deviceName;
    if (deviceNameValue != null) {
      map['deviceName'] = deviceNameValue;
    }
    final ebsValue = ebs;
    if (ebsValue != null) {
      map['ebs'] = ebsValue.toMap();
    }
    final noDeviceValue = noDevice;
    if (noDeviceValue != null) {
      map['noDevice'] = noDeviceValue;
    }
    final virtualNameValue = virtualName;
    if (virtualNameValue != null) {
      map['virtualName'] = virtualNameValue;
    }
    return map;
  }

  factory ImageRecipeBlockDeviceMapping.fromMap(Map<String, dynamic> map) {
    return ImageRecipeBlockDeviceMapping(
      deviceName:
          map['deviceName'] == null ? null : map['deviceName'] as String,
      ebs: map['ebs'] == null
          ? null
          : ImageRecipeBlockDeviceMappingEbs.fromMap(
              (map['ebs'] as Map).cast<String, dynamic>()),
      noDevice: map['noDevice'] == null ? null : map['noDevice'] as bool,
      virtualName:
          map['virtualName'] == null ? null : map['virtualName'] as String,
    );
  }
}
