// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_container_recipe_instance_configuration_block_device_mapping_eb.dart';

class GetContainerRecipeInstanceConfigurationBlockDeviceMapping {
  /// Name of the device. For example, `/dev/sda` or `/dev/xvdb`.
  final String deviceName;

  /// Single list of object with Elastic Block Storage (EBS) block device mapping settings.
  final List<GetContainerRecipeInstanceConfigurationBlockDeviceMappingEb> ebs;

  /// Whether to remove a mapping from the parent image.
  final String noDevice;

  /// Virtual device name. For example, `ephemeral0`. Instance store volumes are numbered starting from 0.
  final String virtualName;

  /// Creates a new [GetContainerRecipeInstanceConfigurationBlockDeviceMapping].
  /// [deviceName] Name of the device. For example, `/dev/sda` or `/dev/xvdb`.
  /// [ebs] Single list of object with Elastic Block Storage (EBS) block device mapping settings.
  /// [noDevice] Whether to remove a mapping from the parent image.
  /// [virtualName] Virtual device name. For example, `ephemeral0`. Instance store volumes are numbered starting from 0.
  GetContainerRecipeInstanceConfigurationBlockDeviceMapping({
    required this.deviceName,
    required this.ebs,
    required this.noDevice,
    required this.virtualName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deviceName'] = deviceName;
    map['ebs'] = pulumi.Input.encodeList<
        GetContainerRecipeInstanceConfigurationBlockDeviceMappingEb,
        Map<String, dynamic>>(ebs, (value) => value.toMap());
    map['noDevice'] = noDevice;
    map['virtualName'] = virtualName;
    return map;
  }

  factory GetContainerRecipeInstanceConfigurationBlockDeviceMapping.fromMap(
      Map<String, dynamic> map) {
    return GetContainerRecipeInstanceConfigurationBlockDeviceMapping(
      deviceName: map['deviceName'] as String,
      ebs: pulumi.Input.decodeList<
              GetContainerRecipeInstanceConfigurationBlockDeviceMappingEb>(
          map['ebs'],
          (value) => GetContainerRecipeInstanceConfigurationBlockDeviceMappingEb
              .fromMap((value as Map).cast<String, dynamic>())),
      noDevice: map['noDevice'] as String,
      virtualName: map['virtualName'] as String,
    );
  }
}
