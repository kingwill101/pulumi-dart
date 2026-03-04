// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodePoolTaint {
  /// The scheduling policy.
  final pulumi.Input<String>? effect;

  /// The key of a taint.
  final pulumi.Input<String> key;

  /// The value of a taint.
  final pulumi.Input<String>? value;

  /// Creates a new [NodePoolTaint].
  /// [effect] The scheduling policy.
  /// [key] The key of a taint.
  /// [value] The value of a taint.
  NodePoolTaint({this.effect, required this.key, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'effect': ?effect, 'key': key, 'value': ?value};
  }

  factory NodePoolTaint.fromMap(Map<String, dynamic> map) {
    return NodePoolTaint(
      effect: (() {
        final guardedValue = map['effect'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      key: pulumi.Input.fromValue(map['key'] as String),
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
