// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_fleet_output_config.dart';

/// {@template pulumi_sagemaker_device_fleet_device_fleet_args_doc}
/// The set of arguments for DeviceFleet.
/// {@endtemplate}
/// {@macro pulumi_sagemaker_device_fleet_device_fleet_args_doc}
class DeviceFleetArgs {
  /// A description of the fleet.
  final pulumi.Input<String>? description;

  /// The name of the Device Fleet (must be unique).
  final pulumi.Input<String> deviceFleetName;

  /// Whether to create an AWS IoT Role Alias during device fleet creation. The name of the role alias generated will match this pattern: "SageMakerEdge-{DeviceFleetName}".
  final pulumi.Input<bool>? enableIotRoleAlias;

  /// Specifies details about the repository. see Output Config details below.
  final pulumi.Input<DeviceFleetOutputConfig> outputConfig;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// The Amazon Resource Name (ARN) that has access to AWS Internet of Things (IoT).
  final pulumi.Input<String> roleArn;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DeviceFleetArgs].
  /// [description] A description of the fleet.
  /// [deviceFleetName] The name of the Device Fleet (must be unique).
  /// [enableIotRoleAlias] Whether to create an AWS IoT Role Alias during device fleet creation. The name of the role alias generated will match this pattern: "SageMakerEdge-{DeviceFleetName}".
  /// [outputConfig] Specifies details about the repository. see Output Config details below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] The Amazon Resource Name (ARN) that has access to AWS Internet of Things (IoT).
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  DeviceFleetArgs({
    String? description,
    required String deviceFleetName,
    bool? enableIotRoleAlias,
    required DeviceFleetOutputConfig outputConfig,
    String? region,
    required String roleArn,
    Map<String, String>? tags,
  }) : description = pulumi.Input.asOptionalInput<String>(description),
       deviceFleetName = pulumi.Input.asInput<String>(deviceFleetName),
       enableIotRoleAlias = pulumi.Input.asOptionalInput<bool>(
         enableIotRoleAlias,
       ),
       outputConfig = pulumi.Input.asInput<DeviceFleetOutputConfig>(
         outputConfig,
       ),
       region = pulumi.Input.asOptionalInput<String>(region),
       roleArn = pulumi.Input.asInput<String>(roleArn),
       tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'deviceFleetName': deviceFleetName,
      'enableIotRoleAlias': ?enableIotRoleAlias,
      'outputConfig':
          pulumi.Input.mapInputValue<
            DeviceFleetOutputConfig,
            Map<String, dynamic>
          >(outputConfig, (value) => value.toMap()),
      'region': ?region,
      'roleArn': roleArn,
      'tags': ?tags,
    };
  }

  factory DeviceFleetArgs.fromMap(Map<String, dynamic> map) {
    return DeviceFleetArgs(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      deviceFleetName: map['deviceFleetName'] as String,
      enableIotRoleAlias: map['enableIotRoleAlias'] == null
          ? null
          : map['enableIotRoleAlias'] as bool,
      outputConfig: DeviceFleetOutputConfig.fromMap(
        (map['outputConfig'] as Map).cast<String, dynamic>(),
      ),
      region: map['region'] == null ? null : map['region'] as String,
      roleArn: map['roleArn'] as String,
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
