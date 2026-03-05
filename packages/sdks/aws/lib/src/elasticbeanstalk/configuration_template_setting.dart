// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConfigurationTemplateSetting {
  /// A unique name for this Template.
  final pulumi.Input<String> name;
  final pulumi.Input<String> namespace;
  final pulumi.Input<String>? resource;
  final pulumi.Input<String> value;

  /// Creates a new [ConfigurationTemplateSetting].
  /// [name] A unique name for this Template.
  /// [namespace] Required.
  /// [resource] Optional.
  /// [value] Required.
  ConfigurationTemplateSetting({
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

  factory ConfigurationTemplateSetting.fromMap(Map<String, dynamic> map) {
    return ConfigurationTemplateSetting(
      name: pulumi.Input.fromValue(map['name'] as String),
      namespace: pulumi.Input.fromValue(map['namespace'] as String),
      resource: (() { final guardedValue = map['resource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

