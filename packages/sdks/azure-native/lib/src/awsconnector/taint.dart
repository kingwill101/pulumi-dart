// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of Taint
class Taint {
  /// Property effect
  final pulumi.Input<String>? effect;
  /// Property key
  final pulumi.Input<String>? key;
  /// Property value
  final pulumi.Input<String>? value;

  /// Creates a new [Taint].
  /// [effect] Property effect
  /// [key] Property key
  /// [value] Property value
  Taint({
    this.effect,
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'effect': ?effect,
      'key': ?key,
      'value': ?value,
    };
  }

  factory Taint.fromMap(Map<String, dynamic> map) {
    return Taint(
      effect: map['effect'] == null ? null : (map['effect'] as String).input(),
      key: map['key'] == null ? null : (map['key'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

