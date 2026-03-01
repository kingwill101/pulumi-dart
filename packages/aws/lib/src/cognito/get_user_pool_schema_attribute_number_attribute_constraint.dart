// ignore_for_file: unused_element, unnecessary_cast

class GetUserPoolSchemaAttributeNumberAttributeConstraint {
  /// - Maximum allowed value.
  final String maxValue;

  /// - Minimum allowed value.
  final String minValue;

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
      maxValue: map['maxValue'] as String,
      minValue: map['minValue'] as String,
    );
  }
}
