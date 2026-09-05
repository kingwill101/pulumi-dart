// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_fleet_output_config.dart';

/// Input properties used for looking up and filtering DeviceFleet resources.
class DeviceFleetState {
  /// ARN assigned by AWS to this Device Fleet.
  final pulumi.Input<String?>? arn;
  /// A description of the fleet.
  final pulumi.Input<String?>? description;
  /// The name of the Device Fleet (must be unique).
  final pulumi.Input<String?>? deviceFleetName;
  /// Whether to create an AWS IoT Role Alias during device fleet creation. The name of the role alias generated will match this pattern: "SageMakerEdge-{DeviceFleetName}".
  final pulumi.Input<bool?>? enableIotRoleAlias;
  final pulumi.Input<String?>? iotRoleAlias;
  /// Specifies details about the repository. see Output Config details below.
  final pulumi.Input<DeviceFleetOutputConfig?>? outputConfig;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// ARN that has access to AWS Internet of Things (IoT).
  final pulumi.Input<String?>? roleArn;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;

  /// Creates a new [DeviceFleetState].
  /// [arn] ARN assigned by AWS to this Device Fleet.
  /// [description] A description of the fleet.
  /// [deviceFleetName] The name of the Device Fleet (must be unique).
  /// [enableIotRoleAlias] Whether to create an AWS IoT Role Alias during device fleet creation. The name of the role alias generated will match this pattern: "SageMakerEdge-{DeviceFleetName}".
  /// [iotRoleAlias] Optional.
  /// [outputConfig] Specifies details about the repository. see Output Config details below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] ARN that has access to AWS Internet of Things (IoT).
  /// [tags] A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  const DeviceFleetState({
    this.arn,
    this.description,
    this.deviceFleetName,
    this.enableIotRoleAlias,
    this.iotRoleAlias,
    this.outputConfig,
    this.region,
    this.roleArn,
    this.tags,
    this.tagsAll,
  });

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
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deviceFleetName: (() { final guardedValue = map['deviceFleetName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      enableIotRoleAlias: (() { final guardedValue = map['enableIotRoleAlias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      iotRoleAlias: (() { final guardedValue = map['iotRoleAlias']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputConfig: (() { final guardedValue = map['outputConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DeviceFleetOutputConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roleArn: (() { final guardedValue = map['roleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}
