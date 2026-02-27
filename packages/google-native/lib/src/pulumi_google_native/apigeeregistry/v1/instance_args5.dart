// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'config.dart';

/// The set of arguments for Instance.
class InstanceArgs5 {
  /// Config of the Instance.
  final Input<Config> config;

  /// Required. Identifier to assign to the Instance. Must be unique within scope of the parent resource.
  final Input<String> instanceId;
  final Input<String>? location;

  /// Format: `projects/*/locations/*/instance`. Currently only `locations/global` is supported.
  final Input<String>? name;
  final Input<String>? project;

  InstanceArgs5({
    required this.config,
    required this.instanceId,
    this.location,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['config'] = Input.mapInputValue<Config, Map<String, dynamic>>(
        config, (value) => value.toMap());
    map['instanceId'] = instanceId;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory InstanceArgs5.fromMap(Map<String, dynamic> map) {
    return InstanceArgs5(
      config: Input.asInput<Config>(map['config']),
      instanceId: Input.asInput<String>(map['instanceId']),
      location: Input.asOptionalInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
