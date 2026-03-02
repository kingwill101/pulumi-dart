// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of TargetGroupAttribute
class TargetGroupAttribute {
  /// The value of the attribute.
  final pulumi.Input<String>? key;
  /// The name of the attribute.
  final pulumi.Input<String>? value;

  /// Creates a new [TargetGroupAttribute].
  /// [key] The value of the attribute.
  /// [value] The name of the attribute.
  TargetGroupAttribute({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory TargetGroupAttribute.fromMap(Map<String, dynamic> map) {
    return TargetGroupAttribute(
      key: map['key'] == null ? null : (map['key'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

