// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class NodeGroupTaint {
  /// The effect of the taint. Valid values: `NO_SCHEDULE`, `NO_EXECUTE`, `PREFER_NO_SCHEDULE`.
  final pulumi.Input<String> effect;
  /// The key of the taint. Maximum length of 63.
  final pulumi.Input<String> key;
  /// The value of the taint. Maximum length of 63.
  final pulumi.Input<String>? value;

  /// Creates a new [NodeGroupTaint].
  /// [effect] The effect of the taint. Valid values: `NO_SCHEDULE`, `NO_EXECUTE`, `PREFER_NO_SCHEDULE`.
  /// [key] The key of the taint. Maximum length of 63.
  /// [value] The value of the taint. Maximum length of 63.
  NodeGroupTaint({
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
      effect: (map['effect'] as String).input(),
      key: (map['key'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

