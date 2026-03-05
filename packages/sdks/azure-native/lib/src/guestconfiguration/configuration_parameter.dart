// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Represents a configuration parameter.
class ConfigurationParameter {
  /// Name of the configuration parameter.
  final pulumi.Input<String>? name;
  /// Value of the configuration parameter.
  final pulumi.Input<String>? value;

  /// Creates a new [ConfigurationParameter].
  /// [name] Name of the configuration parameter.
  /// [value] Value of the configuration parameter.
  ConfigurationParameter({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory ConfigurationParameter.fromMap(Map<String, dynamic> map) {
    return ConfigurationParameter(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

