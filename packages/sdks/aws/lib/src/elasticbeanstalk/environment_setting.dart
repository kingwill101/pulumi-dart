// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnvironmentSetting {
  /// A unique name for this Environment. This name is used
  /// in the application URL
  final pulumi.Input<String> name;
  final pulumi.Input<String> namespace;
  final pulumi.Input<String>? resource;
  final pulumi.Input<String> value;

  /// Creates a new [EnvironmentSetting].
  /// [name] A unique name for this Environment. This name is used
  /// [namespace] Required.
  /// [resource] Optional.
  /// [value] Required.
  const EnvironmentSetting({
    required this.name,
    required this.namespace,
    this.resource,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'namespace': namespace,
      'resource': ?resource,
      'value': value,
    };
  }

  factory EnvironmentSetting.fromMap(Map<String, dynamic> map) {
    return EnvironmentSetting(
      name: pulumi.Input.fromValue(map['name'] as String),
      namespace: pulumi.Input.fromValue(map['namespace'] as String),
      resource: (() { final guardedValue = map['resource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

