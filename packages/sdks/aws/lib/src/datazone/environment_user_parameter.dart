// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnvironmentUserParameter {
  /// The name of an environment profile parameter.
  final pulumi.Input<String?>? name;
  /// The value of an environment profile parameter.
  final pulumi.Input<String?>? value;

  /// Creates a new [EnvironmentUserParameter].
  /// [name] The name of an environment profile parameter.
  /// [value] The value of an environment profile parameter.
  const EnvironmentUserParameter({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory EnvironmentUserParameter.fromMap(Map<String, dynamic> map) {
    return EnvironmentUserParameter(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
