// ignore_for_file: unused_element, unnecessary_cast

class UserPoolSchemaStringAttributeConstraints {
  /// Maximum length of an attribute value of the string type.
  final String? maxLength;

  /// Minimum length of an attribute value of the string type.
  final String? minLength;

  /// Creates a new [UserPoolSchemaStringAttributeConstraints].
  /// [maxLength] Maximum length of an attribute value of the string type.
  /// [minLength] Minimum length of an attribute value of the string type.
  UserPoolSchemaStringAttributeConstraints({this.maxLength, this.minLength});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'maxLength': ?maxLength, 'minLength': ?minLength};
  }

  factory UserPoolSchemaStringAttributeConstraints.fromMap(
    Map<String, dynamic> map,
  ) {
    return UserPoolSchemaStringAttributeConstraints(
      maxLength: map['maxLength'] == null ? null : map['maxLength'] as String,
      minLength: map['minLength'] == null ? null : map['minLength'] as String,
    );
  }
}
