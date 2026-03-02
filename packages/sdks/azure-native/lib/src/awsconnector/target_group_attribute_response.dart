// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of TargetGroupAttribute
class TargetGroupAttributeResponse {
  /// The value of the attribute.
  final pulumi.Input<String>? key;
  /// The name of the attribute.
  final pulumi.Input<String>? value;

  /// Creates a new [TargetGroupAttributeResponse].
  /// [key] The value of the attribute.
  /// [value] The name of the attribute.
  TargetGroupAttributeResponse({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory TargetGroupAttributeResponse.fromMap(Map<String, dynamic> map) {
    return TargetGroupAttributeResponse(
      key: map['key'] == null ? null : (map['key'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

