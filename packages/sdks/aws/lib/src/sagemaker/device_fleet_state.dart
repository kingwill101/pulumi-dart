// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_fleet_output_config.dart';

/// Input properties used for looking up and filtering DeviceFleet resources.
class DeviceFleetState {
  /// The Amazon Resource Name (ARN) assigned by AWS to this Device Fleet.
  final pulumi.Input<String>? arn;
  /// A description of the fleet.
  final pulumi.Input<String>? description;
  /// The name of the Device Fleet (must be unique).
  final pulumi.Input<String>? deviceFleetName;
  /// Whether to create an AWS IoT Role Alias during device fleet creation. The name of the role alias generated will match this pattern: "SageMakerEdge-{DeviceFleetName}".
  final pulumi.Input<bool>? enableIotRoleAlias;
  final pulumi.Input<String>? iotRoleAlias;
  /// Specifies details about the repository. see Output Config details below.
  final pulumi.Input<DeviceFleetOutputConfig>? outputConfig;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The Amazon Resource Name (ARN) that has access to AWS Internet of Things (IoT).
  final pulumi.Input<String>? roleArn;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [DeviceFleetState].
  /// [arn] The Amazon Resource Name (ARN) assigned by AWS to this Device Fleet.
  /// [description] A description of the fleet.
  /// [deviceFleetName] The name of the Device Fleet (must be unique).
  /// [enableIotRoleAlias] Whether to create an AWS IoT Role Alias during device fleet creation. The name of the role alias generated will match this pattern: "SageMakerEdge-{DeviceFleetName}".
  /// [iotRoleAlias] Optional.
  /// [outputConfig] Specifies details about the repository. see Output Config details below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] The Amazon Resource Name (ARN) that has access to AWS Internet of Things (IoT).
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  DeviceFleetState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? description,
    pulumi.Output<String>? deviceFleetName,
    pulumi.Output<bool>? enableIotRoleAlias,
    pulumi.Output<String>? iotRoleAlias,
    pulumi.Output<DeviceFleetOutputConfig>? outputConfig,
    pulumi.Output<String>? region,
    pulumi.Output<String>? roleArn,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      description = pulumi.Input.asOptionalInput<String>(description),
      deviceFleetName = pulumi.Input.asOptionalInput<String>(deviceFleetName),
      enableIotRoleAlias = pulumi.Input.asOptionalInput<bool>(enableIotRoleAlias),
      iotRoleAlias = pulumi.Input.asOptionalInput<String>(iotRoleAlias),
      outputConfig = pulumi.Input.asOptionalInput<DeviceFleetOutputConfig>(outputConfig),
      region = pulumi.Input.asOptionalInput<String>(region),
      roleArn = pulumi.Input.asOptionalInput<String>(roleArn),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'deviceFleetName': ?deviceFleetName,
      'enableIotRoleAlias': ?enableIotRoleAlias,
      'iotRoleAlias': ?iotRoleAlias,
      'outputConfig': ?pulumi.Input.mapOptionalInputValue<DeviceFleetOutputConfig, Map<String, dynamic>>(outputConfig, (value) => value.toMap()),
      'region': ?region,
      'roleArn': ?roleArn,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory DeviceFleetState.fromMap(Map<String, dynamic> map) {
    return DeviceFleetState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      deviceFleetName: map['deviceFleetName'] == null ? null : pulumi.Output.create<String>(map['deviceFleetName'] as String),
      enableIotRoleAlias: map['enableIotRoleAlias'] == null ? null : pulumi.Output.create<bool>(map['enableIotRoleAlias'] as bool),
      iotRoleAlias: map['iotRoleAlias'] == null ? null : pulumi.Output.create<String>(map['iotRoleAlias'] as String),
      outputConfig: map['outputConfig'] == null ? null : pulumi.Output.create<DeviceFleetOutputConfig>(DeviceFleetOutputConfig.fromMap((map['outputConfig'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      roleArn: map['roleArn'] == null ? null : pulumi.Output.create<String>(map['roleArn'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

