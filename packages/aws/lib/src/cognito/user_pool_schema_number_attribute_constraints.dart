// ignore_for_file: unused_element, unnecessary_cast

class UserPoolSchemaNumberAttributeConstraints {
  /// Maximum value of an attribute that is of the number data type.
  final String? maxValue;

  /// Minimum value of an attribute that is of the number data type.
  final String? minValue;

  /// Creates a new [UserPoolSchemaNumberAttributeConstraints].
  /// [maxValue] Maximum value of an attribute that is of the number data type.
  /// [minValue] Minimum value of an attribute that is of the number data type.
  UserPoolSchemaNumberAttributeConstraints({
    this.maxValue,
    this.minValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maxValueValue = maxValue;
    if (maxValueValue != null) {
      map['maxValue'] = maxValueValue;
    }
    final minValueValue = minValue;
    if (minValueValue != null) {
      map['minValue'] = minValueValue;
    }
    return map;
  }

  factory UserPoolSchemaNumberAttributeConstraints.fromMap(
      Map<String, dynamic> map) {
    return UserPoolSchemaNumberAttributeConstraints(
      maxValue: map['maxValue'] == null ? null : map['maxValue'] as String,
      minValue: map['minValue'] == null ? null : map['minValue'] as String,
    );
  }
}
