// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class RdsCloneDbInstanceParameter {
  /// The parameters name.
  final pulumi.Input<String> name;
  /// The parameters value.
  final pulumi.Input<String> value;

  /// Creates a new [RdsCloneDbInstanceParameter].
  /// [name] The parameters name.
  /// [value] The parameters value.
  const RdsCloneDbInstanceParameter({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory RdsCloneDbInstanceParameter.fromMap(Map<String, dynamic> map) {
    return RdsCloneDbInstanceParameter(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

