// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceParameter {
  /// The parameter name.
  final pulumi.Input<String> name;

  /// The parameter value.
  final pulumi.Input<String> value;

  /// Creates a new [InstanceParameter].
  /// [name] The parameter name.
  /// [value] The parameter value.
  InstanceParameter({required this.name, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'value': value};
  }

  factory InstanceParameter.fromMap(Map<String, dynamic> map) {
    return InstanceParameter(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
