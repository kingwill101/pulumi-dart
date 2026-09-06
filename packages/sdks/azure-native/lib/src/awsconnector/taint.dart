// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of Taint
class Taint {
  /// Property effect
  final pulumi.Input<String?>? effect;
  /// Property key
  final pulumi.Input<String?>? key;
  /// Property value
  final pulumi.Input<String?>? value;

  /// Creates a new [Taint].
  /// [effect] Property effect
  /// [key] Property key
  /// [value] Property value
  const Taint({
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
      effect: (() { final guardedValue = map['effect']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: (() { final guardedValue = map['key']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
