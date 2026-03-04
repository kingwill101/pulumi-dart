// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ParameterGroupParameter {
  /// The name of the Redshift parameter.
  final pulumi.Input<String> name;

  /// The value of the Redshift parameter.
  final pulumi.Input<String> value;

  /// Creates a new [ParameterGroupParameter].
  /// [name] The name of the Redshift parameter.
  /// [value] The value of the Redshift parameter.
  ParameterGroupParameter({required this.name, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'value': value};
  }

  factory ParameterGroupParameter.fromMap(Map<String, dynamic> map) {
    return ParameterGroupParameter(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
