// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ControlTowerControlParameter {
  /// The name of the parameter.
  final pulumi.Input<String> key;
  /// The value of the parameter.
  final pulumi.Input<String> value;

  /// Creates a new [ControlTowerControlParameter].
  /// [key] The name of the parameter.
  /// [value] The value of the parameter.
  const ControlTowerControlParameter({
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'value': value,
    };
  }

  factory ControlTowerControlParameter.fromMap(Map<String, dynamic> map) {
    return ControlTowerControlParameter(
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

