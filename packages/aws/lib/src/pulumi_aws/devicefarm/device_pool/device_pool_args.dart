// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../device_pool_rule/device_pool_rule.dart';

/// The set of arguments for DevicePool.
class DevicePoolArgs {
  /// The device pool's description.
  final Input<String>? description;

  /// The number of devices that Device Farm can add to your device pool.
  final Input<int>? maxDevices;

  /// The name of the Device Pool
  final Input<String>? name;

  /// The ARN of the project for the device pool.
  final Input<String> projectArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The device pool's rules. See Rule.
  final Input<List<DevicePoolRule>> rules;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final Input<Map<String, String>>? tags;

  DevicePoolArgs({
    this.description,
    this.maxDevices,
    this.name,
    required this.projectArn,
    this.region,
    required this.rules,
    this.tags,
  });

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
    map['rules'] =
        Input.mapInputValue<List<DevicePoolRule>, List<Map<String, dynamic>>>(
            rules,
            (value) => Input.encodeList<DevicePoolRule, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory DevicePoolArgs.fromMap(Map<String, dynamic> map) {
    return DevicePoolArgs(
      description: Input.asOptionalInput<String>(map['description']),
      maxDevices: Input.asOptionalInput<int>(map['maxDevices']),
      name: Input.asOptionalInput<String>(map['name']),
      projectArn: Input.asInput<String>(map['projectArn']),
      region: Input.asOptionalInput<String>(map['region']),
      rules: Input.asInput<List<DevicePoolRule>>(map['rules']),
      tags: Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
