// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'config.dart';

/// The set of arguments for Instance.
class InstanceApigeeregistryV1Args {
  /// Config of the Instance.
  final pulumi.Input<Config> config;

  /// Required. Identifier to assign to the Instance. Must be unique within scope of the parent resource.
  final pulumi.Input<String> instanceId;
  final pulumi.Input<String>? location;

  /// Format: `projects/*/locations/*/instance`. Currently only `locations/global` is supported.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  InstanceApigeeregistryV1Args({
    required this.config,
    required this.instanceId,
    this.location,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['config'] = pulumi.Input.mapInputValue<Config, Map<String, dynamic>>(
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

  factory InstanceApigeeregistryV1Args.fromMap(Map<String, dynamic> map) {
    return InstanceApigeeregistryV1Args(
      config: pulumi.Input.asInput<Config>(map['config']),
      instanceId: pulumi.Input.asInput<String>(map['instanceId']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
