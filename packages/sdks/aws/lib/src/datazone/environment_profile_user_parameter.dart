// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnvironmentProfileUserParameter {
  /// Name of the environment profile parameter.
  final pulumi.Input<String>? name;
  /// Value of the environment profile parameter.
  final pulumi.Input<String>? value;

  /// Creates a new [EnvironmentProfileUserParameter].
  /// [name] Name of the environment profile parameter.
  /// [value] Value of the environment profile parameter.
  EnvironmentProfileUserParameter({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory EnvironmentProfileUserParameter.fromMap(Map<String, dynamic> map) {
    return EnvironmentProfileUserParameter(
      name: map['name'] == null ? null : (map['name'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

