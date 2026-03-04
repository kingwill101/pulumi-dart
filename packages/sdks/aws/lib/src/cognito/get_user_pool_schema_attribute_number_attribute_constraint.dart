// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetUserPoolSchemaAttributeNumberAttributeConstraint {
  /// - Maximum allowed value.
  final pulumi.Input<String> maxValue;

  /// - Minimum allowed value.
  final pulumi.Input<String> minValue;

  /// Creates a new [GetUserPoolSchemaAttributeNumberAttributeConstraint].
  /// [maxValue] - Maximum allowed value.
  /// [minValue] - Minimum allowed value.
  GetUserPoolSchemaAttributeNumberAttributeConstraint({
    required this.maxValue,
    required this.minValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'maxValue': maxValue, 'minValue': minValue};
  }

  factory GetUserPoolSchemaAttributeNumberAttributeConstraint.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetUserPoolSchemaAttributeNumberAttributeConstraint(
      maxValue: pulumi.Input.fromValue(map['maxValue'] as String),
      minValue: pulumi.Input.fromValue(map['minValue'] as String),
    );
  }
}
