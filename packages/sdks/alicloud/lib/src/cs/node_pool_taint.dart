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
  NodePoolTaint({
    this.effect,
    required this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effect': ?effect,
      'key': key,
      'value': ?value,
    };
  }

  factory NodePoolTaint.fromMap(Map<String, dynamic> map) {
    return NodePoolTaint(
      effect: map['effect'] == null ? null : (map['effect'] as String).input(),
      key: (map['key'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

