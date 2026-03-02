// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_recipe_instance_configuration_block_device_mapping_ebs.dart';

class ContainerRecipeInstanceConfigurationBlockDeviceMapping {
  /// Name of the device. For example, `/dev/sda` or `/dev/xvdb`.
  final pulumi.Input<String>? deviceName;
  /// Configuration block with Elastic Block Storage (EBS) block device mapping settings. Detailed below.
  final pulumi.Input<ContainerRecipeInstanceConfigurationBlockDeviceMappingEbs>? ebs;
  /// Set to `true` to remove a mapping from the parent image.
  final pulumi.Input<bool>? noDevice;
  /// Virtual device name. For example, `ephemeral0`. Instance store volumes are numbered starting from 0.
  final pulumi.Input<String>? virtualName;

  /// Creates a new [ContainerRecipeInstanceConfigurationBlockDeviceMapping].
  /// [deviceName] Name of the device. For example, `/dev/sda` or `/dev/xvdb`.
  /// [ebs] Configuration block with Elastic Block Storage (EBS) block device mapping settings. Detailed below.
  /// [noDevice] Set to `true` to remove a mapping from the parent image.
  /// [virtualName] Virtual device name. For example, `ephemeral0`. Instance store volumes are numbered starting from 0.
  ContainerRecipeInstanceConfigurationBlockDeviceMapping({
    this.deviceName,
    this.ebs,
    this.noDevice,
    this.virtualName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deviceName': ?deviceName,
      'ebs': ?pulumi.Input.mapOptionalInputValue<ContainerRecipeInstanceConfigurationBlockDeviceMappingEbs, Map<String, dynamic>>(ebs, (value) => value.toMap()),
      'noDevice': ?noDevice,
      'virtualName': ?virtualName,
    };
  }

  factory ContainerRecipeInstanceConfigurationBlockDeviceMapping.fromMap(Map<String, dynamic> map) {
    return ContainerRecipeInstanceConfigurationBlockDeviceMapping(
      deviceName: map['deviceName'] == null ? null : ((map['deviceName'] as String).input()).input(),
      ebs: map['ebs'] == null ? null : ((ContainerRecipeInstanceConfigurationBlockDeviceMappingEbs.fromMap((map['ebs']! as Map).cast<String, dynamic>())).input()).input(),
      noDevice: map['noDevice'] == null ? null : ((map['noDevice'] as bool).input()).input(),
      virtualName: map['virtualName'] == null ? null : ((map['virtualName'] as String).input()).input(),
    );
  }
}

