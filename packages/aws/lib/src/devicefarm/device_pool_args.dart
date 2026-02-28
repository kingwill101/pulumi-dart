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
    String? description,
    int? maxDevices,
    String? name,
    required String projectArn,
    String? region,
    required List<DevicePoolRule> rules,
    Map<String, String>? tags,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        maxDevices = pulumi.Input.asOptionalInput<int>(maxDevices),
        name = pulumi.Input.asOptionalInput<String>(name),
        projectArn = pulumi.Input.asInput<String>(projectArn),
        region = pulumi.Input.asOptionalInput<String>(region),
        rules = pulumi.Input.asInput<List<DevicePoolRule>>(rules),
        tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final maxDevicesValue = maxDevices;
    if (maxDevicesValue != null) {
      map['maxDevices'] = maxDevicesValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['projectArn'] = projectArn;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['rules'] = pulumi.Input.mapInputValue<List<DevicePoolRule>,
            List<Map<String, dynamic>>>(
        rules,
        (value) =>
            pulumi.Input.encodeList<DevicePoolRule, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory DevicePoolArgs.fromMap(Map<String, dynamic> map) {
    return DevicePoolArgs(
      description:
          map['description'] == null ? null : map['description'] as String,
      maxDevices: map['maxDevices'] == null ? null : map['maxDevices'] as int,
      name: map['name'] == null ? null : map['name'] as String,
      projectArn: map['projectArn'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      rules: pulumi.Input.decodeList<DevicePoolRule>(
          map['rules'],
          (value) =>
              DevicePoolRule.fromMap((value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null
          ? null
          : (map['tags'] as Map).cast<String, String>(),
    );
  }
}
