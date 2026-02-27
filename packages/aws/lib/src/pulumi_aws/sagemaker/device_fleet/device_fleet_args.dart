// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../device_fleet_output_config/device_fleet_output_config.dart';

/// The set of arguments for DeviceFleet.
class DeviceFleetArgs {
  /// A description of the fleet.
  final Input<String>? description;

  /// The name of the Device Fleet (must be unique).
  final Input<String> deviceFleetName;

  /// Whether to create an AWS IoT Role Alias during device fleet creation. The name of the role alias generated will match this pattern: "SageMakerEdge-{DeviceFleetName}".
  final Input<bool>? enableIotRoleAlias;

  /// Specifies details about the repository. see Output Config details below.
  final Input<DeviceFleetOutputConfig> outputConfig;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The Amazon Resource Name (ARN) that has access to AWS Internet of Things (IoT).
  final Input<String> roleArn;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  DeviceFleetArgs({
    this.description,
    required this.deviceFleetName,
    this.enableIotRoleAlias,
    required this.outputConfig,
    this.region,
    required this.roleArn,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['deviceFleetName'] = deviceFleetName;
    final enableIotRoleAliasValue = enableIotRoleAlias;
    if (enableIotRoleAliasValue != null) {
      map['enableIotRoleAlias'] = enableIotRoleAliasValue;
    }
    map['outputConfig'] =
        Input.mapInputValue<DeviceFleetOutputConfig, Map<String, dynamic>>(
            outputConfig, (value) => value.toMap());
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['roleArn'] = roleArn;
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory DeviceFleetArgs.fromMap(Map<String, dynamic> map) {
    return DeviceFleetArgs(
      description: Input.asOptionalInput<String>(map['description']),
      deviceFleetName: Input.asInput<String>(map['deviceFleetName']),
      enableIotRoleAlias:
          Input.asOptionalInput<bool>(map['enableIotRoleAlias']),
      outputConfig: Input.asInput<DeviceFleetOutputConfig>(map['outputConfig']),
      region: Input.asOptionalInput<String>(map['region']),
      roleArn: Input.asInput<String>(map['roleArn']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
