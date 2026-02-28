// ignore_for_file: unused_element, unnecessary_cast

import 'container_recipe_instance_configuration_block_device_mapping_ebs.dart';

class ContainerRecipeInstanceConfigurationBlockDeviceMapping {
  /// Name of the device. For example, `/dev/sda` or `/dev/xvdb`.
  final String? deviceName;
  /// Configuration block with Elastic Block Storage (EBS) block device mapping settings. Detailed below.
  final ContainerRecipeInstanceConfigurationBlockDeviceMappingEbs? ebs;
  /// Set to `true` to remove a mapping from the parent image.
  final bool? noDevice;
  /// Virtual device name. For example, `ephemeral0`. Instance store volumes are numbered starting from 0.
  final String? virtualName;

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
      'ebs': ?ebs == null ? null : ebs!.toMap(),
      'noDevice': ?noDevice,
      'virtualName': ?virtualName,
    };
  }

  factory ContainerRecipeInstanceConfigurationBlockDeviceMapping.fromMap(Map<String, dynamic> map) {
    return ContainerRecipeInstanceConfigurationBlockDeviceMapping(
      deviceName: map['deviceName'] == null ? null : map['deviceName'] as String,
      ebs: map['ebs'] == null ? null : ContainerRecipeInstanceConfigurationBlockDeviceMappingEbs.fromMap((map['ebs'] as Map).cast<String, dynamic>()),
      noDevice: map['noDevice'] == null ? null : map['noDevice'] as bool,
      virtualName: map['virtualName'] == null ? null : map['virtualName'] as String,
    );
  }
}

