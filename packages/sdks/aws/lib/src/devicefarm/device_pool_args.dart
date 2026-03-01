// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_pool_rule.dart';

/// {@template pulumi_devicefarm_device_pool_device_pool_args_doc}
/// The set of arguments for DevicePool.
/// {@endtemplate}
/// {@macro pulumi_devicefarm_device_pool_device_pool_args_doc}
class DevicePoolArgs {
  /// The device pool's description.
  final pulumi.Input<String>? description;
  /// The number of devices that Device Farm can add to your device pool.
  final pulumi.Input<int>? maxDevices;
  /// The name of the Device Pool
  final pulumi.Input<String>? name;
  /// The ARN of the project for the device pool.
  final pulumi.Input<String> projectArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The device pool's rules. See Rule.
  final pulumi.Input<List<DevicePoolRule>> rules;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [DevicePoolArgs].
  /// [description] The device pool's description.
  /// [maxDevices] The number of devices that Device Farm can add to your device pool.
  /// [name] The name of the Device Pool
  /// [projectArn] The ARN of the project for the device pool.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rules] The device pool's rules. See Rule.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  DevicePoolArgs({
    pulumi.Output<String>? description,
    pulumi.Output<int>? maxDevices,
    pulumi.Output<String>? name,
    required pulumi.Output<String> projectArn,
    pulumi.Output<String>? region,
    required pulumi.Output<List<DevicePoolRule>> rules,
    pulumi.Output<Map<String, String>>? tags,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      maxDevices = pulumi.Input.asOptionalInput<int>(maxDevices),
      name = pulumi.Input.asOptionalInput<String>(name),
      projectArn = pulumi.Input.asInput<String>(projectArn),
      region = pulumi.Input.asOptionalInput<String>(region),
      rules = pulumi.Input.asInput<List<DevicePoolRule>>(rules),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'maxDevices': ?maxDevices,
      'name': ?name,
      'projectArn': projectArn,
      'region': ?region,
      'rules': pulumi.Input.mapInputValue<List<DevicePoolRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<DevicePoolRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
    };
  }

  factory DevicePoolArgs.fromMap(Map<String, dynamic> map) {
    return DevicePoolArgs(
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      maxDevices: map['maxDevices'] == null ? null : pulumi.Output.create<int>(map['maxDevices'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      projectArn: pulumi.Output.create<String>(map['projectArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      rules: pulumi.Output.create<List<DevicePoolRule>>(pulumi.Input.decodeList<DevicePoolRule>(map['rules'], (value) => DevicePoolRule.fromMap((value as Map).cast<String, dynamic>()))),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
    );
  }
}

