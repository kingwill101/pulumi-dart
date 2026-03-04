// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_container_recipe_instance_configuration_block_device_mapping_eb.dart';

class GetContainerRecipeInstanceConfigurationBlockDeviceMapping {
  /// Name of the device. For example, `/dev/sda` or `/dev/xvdb`.
  final pulumi.Input<String> deviceName;

  /// Single list of object with Elastic Block Storage (EBS) block device mapping settings.
  final pulumi.Input<
    List<GetContainerRecipeInstanceConfigurationBlockDeviceMappingEb>
  >
  ebs;

  /// Whether to remove a mapping from the parent image.
  final pulumi.Input<String> noDevice;

  /// Virtual device name. For example, `ephemeral0`. Instance store volumes are numbered starting from 0.
  final pulumi.Input<String> virtualName;

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
    return <String, dynamic>{
      'deviceName': deviceName,
      'ebs':
          pulumi.Input.mapInputValue<
            List<GetContainerRecipeInstanceConfigurationBlockDeviceMappingEb>,
            List<Map<String, dynamic>>
          >(
            ebs,
            (value) =>
                pulumi.Input.encodeList<
                  GetContainerRecipeInstanceConfigurationBlockDeviceMappingEb,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'noDevice': noDevice,
      'virtualName': virtualName,
    };
  }

  factory GetContainerRecipeInstanceConfigurationBlockDeviceMapping.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetContainerRecipeInstanceConfigurationBlockDeviceMapping(
      deviceName: pulumi.Input.fromValue(map['deviceName'] as String),
      ebs: pulumi.Input.fromValue(
        pulumi.Input.decodeList<
          GetContainerRecipeInstanceConfigurationBlockDeviceMappingEb
        >(
          map['ebs']!,
          (value) =>
              GetContainerRecipeInstanceConfigurationBlockDeviceMappingEb.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
        ),
      ),
      noDevice: pulumi.Input.fromValue(map['noDevice'] as String),
      virtualName: pulumi.Input.fromValue(map['virtualName'] as String),
    );
  }
}
