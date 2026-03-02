// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'image_recipe_block_device_mapping_ebs.dart';

class ImageRecipeBlockDeviceMapping {
  /// Name of the device. For example, `/dev/sda` or `/dev/xvdb`.
  final pulumi.Input<String>? deviceName;
  /// Configuration block with Elastic Block Storage (EBS) block device mapping settings. Detailed below.
  final pulumi.Input<ImageRecipeBlockDeviceMappingEbs>? ebs;
  /// Set to `true` to remove a mapping from the parent image.
  final pulumi.Input<bool>? noDevice;
  /// Virtual device name. For example, `ephemeral0`. Instance store volumes are numbered starting from 0.
  final pulumi.Input<String>? virtualName;

  /// Creates a new [ImageRecipeBlockDeviceMapping].
  /// [deviceName] Name of the device. For example, `/dev/sda` or `/dev/xvdb`.
  /// [ebs] Configuration block with Elastic Block Storage (EBS) block device mapping settings. Detailed below.
  /// [noDevice] Set to `true` to remove a mapping from the parent image.
  /// [virtualName] Virtual device name. For example, `ephemeral0`. Instance store volumes are numbered starting from 0.
  ImageRecipeBlockDeviceMapping({
    this.deviceName,
    this.ebs,
    this.noDevice,
    this.virtualName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceName': ?deviceName,
      'ebs': ?pulumi.Input.mapOptionalInputValue<ImageRecipeBlockDeviceMappingEbs, Map<String, dynamic>>(ebs, (value) => value.toMap()),
      'noDevice': ?noDevice,
      'virtualName': ?virtualName,
    };
  }

  factory ImageRecipeBlockDeviceMapping.fromMap(Map<String, dynamic> map) {
    return ImageRecipeBlockDeviceMapping(
      deviceName: map['deviceName'] == null ? null : (map['deviceName'] as String).input(),
      ebs: map['ebs'] == null ? null : (ImageRecipeBlockDeviceMappingEbs.fromMap((map['ebs'] as Map).cast<String, dynamic>())).input(),
      noDevice: map['noDevice'] == null ? null : (map['noDevice'] as bool).input(),
      virtualName: map['virtualName'] == null ? null : (map['virtualName'] as String).input(),
    );
  }
}

