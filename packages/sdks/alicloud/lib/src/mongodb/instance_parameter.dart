// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceParameter {
  /// The name of the parameter.
  final pulumi.Input<String> name;

  /// The value of the parameter.
  final pulumi.Input<String> value;

  /// Creates a new [InstanceParameter].
  /// [name] The name of the parameter.
  /// [value] The value of the parameter.
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
