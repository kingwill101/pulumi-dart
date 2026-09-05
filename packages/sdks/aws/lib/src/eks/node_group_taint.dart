// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodeGroupTaint {
  /// The effect of the taint. Valid values: `NO_SCHEDULE`, `NO_EXECUTE`, `PREFER_NO_SCHEDULE`.
  final pulumi.Input<String> effect;
  /// The key of the taint. Maximum length of 63.
  final pulumi.Input<String> key;
  /// The value of the taint. Maximum length of 63.
  final pulumi.Input<String?>? value;

  /// Creates a new [NodeGroupTaint].
  /// [effect] The effect of the taint. Valid values: `NO_SCHEDULE`, `NO_EXECUTE`, `PREFER_NO_SCHEDULE`.
  /// [key] The key of the taint. Maximum length of 63.
  /// [value] The value of the taint. Maximum length of 63.
  const NodeGroupTaint({
    required this.effect,
    required this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effect': effect,
      'key': key,
      'value': ?value,
    };
  }

  factory NodeGroupTaint.fromMap(Map<String, dynamic> map) {
    return NodeGroupTaint(
      effect: pulumi.Input.fromValue(map['effect'] as String),
      key: pulumi.Input.fromValue(map['key'] as String),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
