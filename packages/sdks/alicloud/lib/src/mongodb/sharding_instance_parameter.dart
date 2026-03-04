// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ShardingInstanceParameter {
  /// The name of the parameter.
  final pulumi.Input<String> name;

  /// The value of the parameter.
  final pulumi.Input<String> value;

  /// Creates a new [ShardingInstanceParameter].
  /// [name] The name of the parameter.
  /// [value] The value of the parameter.
  ShardingInstanceParameter({required this.name, required this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name, 'value': value};
  }

  factory ShardingInstanceParameter.fromMap(Map<String, dynamic> map) {
    return ShardingInstanceParameter(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
