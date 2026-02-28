// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_image_recipe_block_device_mapping_eb.dart';

class GetImageRecipeBlockDeviceMapping {
  /// Name of the device. For example, `/dev/sda` or `/dev/xvdb`.
  final String deviceName;

  /// Single list of object with Elastic Block Storage (EBS) block device mapping settings.
  final List<GetImageRecipeBlockDeviceMappingEb> ebs;

  /// Whether to remove a mapping from the parent image.
  final String noDevice;

  /// Virtual device name. For example, `ephemeral0`. Instance store volumes are numbered starting from 0.
  final String virtualName;

  /// Creates a new [GetImageRecipeBlockDeviceMapping].
  /// [deviceName] Name of the device. For example, `/dev/sda` or `/dev/xvdb`.
  /// [ebs] Single list of object with Elastic Block Storage (EBS) block device mapping settings.
  /// [noDevice] Whether to remove a mapping from the parent image.
  /// [virtualName] Virtual device name. For example, `ephemeral0`. Instance store volumes are numbered starting from 0.
  GetImageRecipeBlockDeviceMapping({
    required this.deviceName,
    required this.ebs,
    required this.noDevice,
    required this.virtualName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deviceName'] = deviceName;
    map['ebs'] = pulumi.Input.encodeList<GetImageRecipeBlockDeviceMappingEb,
        Map<String, dynamic>>(ebs, (value) => value.toMap());
    map['noDevice'] = noDevice;
    map['virtualName'] = virtualName;
    return map;
  }

  factory GetImageRecipeBlockDeviceMapping.fromMap(Map<String, dynamic> map) {
    return GetImageRecipeBlockDeviceMapping(
      deviceName: map['deviceName'] as String,
      ebs: pulumi.Input.decodeList<GetImageRecipeBlockDeviceMappingEb>(
          map['ebs'],
          (value) => GetImageRecipeBlockDeviceMappingEb.fromMap(
              (value as Map).cast<String, dynamic>())),
      noDevice: map['noDevice'] as String,
      virtualName: map['virtualName'] as String,
    );
  }
}
