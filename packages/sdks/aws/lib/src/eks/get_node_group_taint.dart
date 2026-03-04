// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetNodeGroupTaint {
  /// The effect of the taint.
  final pulumi.Input<String> effect;

  /// The key of the taint.
  final pulumi.Input<String> key;

  /// The value of the taint.
  final pulumi.Input<String> value;

  /// Creates a new [GetNodeGroupTaint].
  /// [effect] The effect of the taint.
  /// [key] The key of the taint.
  /// [value] The value of the taint.
  GetNodeGroupTaint({
    required this.effect,
    required this.key,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'effect': effect, 'key': key, 'value': value};
  }

  factory GetNodeGroupTaint.fromMap(Map<String, dynamic> map) {
    return GetNodeGroupTaint(
      effect: pulumi.Input.fromValue(map['effect'] as String),
      key: pulumi.Input.fromValue(map['key'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
