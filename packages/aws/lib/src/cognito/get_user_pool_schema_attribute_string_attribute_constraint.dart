// ignore_for_file: unused_element, unnecessary_cast

class GetUserPoolSchemaAttributeStringAttributeConstraint {
  /// - Maximum allowed length.
  final String maxLength;

  /// - Minimum allowed length.
  final String minLength;

  /// Creates a new [GetUserPoolSchemaAttributeStringAttributeConstraint].
  /// [maxLength] - Maximum allowed length.
  /// [minLength] - Minimum allowed length.
  GetUserPoolSchemaAttributeStringAttributeConstraint({
    required this.maxLength,
    required this.minLength,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'maxLength': maxLength, 'minLength': minLength};
  }

  factory GetUserPoolSchemaAttributeStringAttributeConstraint.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetUserPoolSchemaAttributeStringAttributeConstraint(
      maxLength: map['maxLength'] as String,
      minLength: map['minLength'] as String,
    );
  }
}
