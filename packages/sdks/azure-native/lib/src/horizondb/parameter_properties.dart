// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of a HorizonDB parameters.
class ParameterProperties {
  /// The name of the parameter.
  final pulumi.Input<String>? name;
  /// The value of the configuration.
  final pulumi.Input<String>? value;

  /// Creates a new [ParameterProperties].
  /// [name] The name of the parameter.
  /// [value] The value of the configuration.
  const ParameterProperties({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory ParameterProperties.fromMap(Map<String, dynamic> map) {
    return ParameterProperties(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
