// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'device_pool_rule.dart';

/// Input properties used for looking up and filtering DevicePool resources.
class DevicePoolState {
  /// The Amazon Resource Name of this Device Pool
  final pulumi.Input<String>? arn;
  /// The device pool's description.
  final pulumi.Input<String>? description;
  /// The number of devices that Device Farm can add to your device pool.
  final pulumi.Input<int>? maxDevices;
  /// The name of the Device Pool
  final pulumi.Input<String>? name;
  /// The ARN of the project for the device pool.
  final pulumi.Input<String>? projectArn;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The device pool's rules. See Rule.
  final pulumi.Input<List<DevicePoolRule>>? rules;
  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  final pulumi.Input<String>? type;

  /// Creates a new [DevicePoolState].
  /// [arn] The Amazon Resource Name of this Device Pool
  /// [description] The device pool's description.
  /// [maxDevices] The number of devices that Device Farm can add to your device pool.
  /// [name] The name of the Device Pool
  /// [projectArn] The ARN of the project for the device pool.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [rules] The device pool's rules. See Rule.
  /// [tags] A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [type] Optional.
  DevicePoolState({
    pulumi.Output<String>? arn,
    pulumi.Output<String>? description,
    pulumi.Output<int>? maxDevices,
    pulumi.Output<String>? name,
    pulumi.Output<String>? projectArn,
    pulumi.Output<String>? region,
    pulumi.Output<List<DevicePoolRule>>? rules,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? type,
  }) :
      arn = pulumi.Input.asOptionalInput<String>(arn),
      description = pulumi.Input.asOptionalInput<String>(description),
      maxDevices = pulumi.Input.asOptionalInput<int>(maxDevices),
      name = pulumi.Input.asOptionalInput<String>(name),
      projectArn = pulumi.Input.asOptionalInput<String>(projectArn),
      region = pulumi.Input.asOptionalInput<String>(region),
      rules = pulumi.Input.asOptionalInput<List<DevicePoolRule>>(rules),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      type = pulumi.Input.asOptionalInput<String>(type);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'description': ?description,
      'maxDevices': ?maxDevices,
      'name': ?name,
      'projectArn': ?projectArn,
      'region': ?region,
      'rules': ?pulumi.Input.mapOptionalInputValue<List<DevicePoolRule>, List<Map<String, dynamic>>>(rules, (value) => pulumi.Input.encodeList<DevicePoolRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'type': ?type,
    };
  }

  factory DevicePoolState.fromMap(Map<String, dynamic> map) {
    return DevicePoolState(
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      maxDevices: map['maxDevices'] == null ? null : pulumi.Output.create<int>(map['maxDevices'] as int),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      projectArn: map['projectArn'] == null ? null : pulumi.Output.create<String>(map['projectArn'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      rules: map['rules'] == null ? null : pulumi.Output.create<List<DevicePoolRule>>(pulumi.Input.decodeList<DevicePoolRule>(map['rules'], (value) => DevicePoolRule.fromMap((value as Map).cast<String, dynamic>()))),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      type: map['type'] == null ? null : pulumi.Output.create<String>(map['type'] as String),
    );
  }
}

