// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_fleet_output_config.dart';

/// {@template pulumi_sagemaker_device_fleet_device_fleet_args_doc}
/// The set of arguments for DeviceFleet.
/// {@endtemplate}
/// {@macro pulumi_sagemaker_device_fleet_device_fleet_args_doc}
class DeviceFleetArgs {
  /// A description of the fleet.
  final pulumi.Input<String?>? description;
  /// The name of the Device Fleet (must be unique).
  final pulumi.Input<String> deviceFleetName;
  /// Whether to create an AWS IoT Role Alias during device fleet creation. The name of the role alias generated will match this pattern: "SageMakerEdge-{DeviceFleetName}".
  final pulumi.Input<bool?>? enableIotRoleAlias;
  /// Specifies details about the repository. see Output Config details below.
  final pulumi.Input<DeviceFleetOutputConfig> outputConfig;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ARN that has access to AWS Internet of Things (IoT).
  final pulumi.Input<String> roleArn;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;

  /// Creates a new [DeviceFleetArgs].
  /// [description] A description of the fleet.
  /// [deviceFleetName] The name of the Device Fleet (must be unique).
  /// [enableIotRoleAlias] Whether to create an AWS IoT Role Alias during device fleet creation. The name of the role alias generated will match this pattern: "SageMakerEdge-{DeviceFleetName}".
  /// [outputConfig] Specifies details about the repository. see Output Config details below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] ARN that has access to AWS Internet of Things (IoT).
  /// [tags] A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  const DeviceFleetArgs({
    this.description,
    required this.deviceFleetName,
    this.enableIotRoleAlias,
    required this.outputConfig,
    this.region,
    required this.roleArn,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'deviceFleetName': deviceFleetName,
      'enableIotRoleAlias': ?enableIotRoleAlias,
      'outputConfig': pulumi.Input.mapInputValue<DeviceFleetOutputConfig, Map<String, dynamic>>(outputConfig, (value) => value.toMap()),
      'region': ?region,
      'roleArn': roleArn,
      'tags': ?tags,
    };
  }

  factory DeviceFleetArgs.fromMap(Map<String, dynamic> map) {
    return DeviceFleetArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deviceFleetName: pulumi.Input.fromValue(map['deviceFleetName'] as String),
      enableIotRoleAlias: (() { final guardedValue = map['enableIotRoleAlias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      outputConfig: pulumi.Input.fromValue(DeviceFleetOutputConfig.fromMap((map['outputConfig']! as Map).cast<String, dynamic>())),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: pulumi.Input.fromValue(map['roleArn'] as String),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
