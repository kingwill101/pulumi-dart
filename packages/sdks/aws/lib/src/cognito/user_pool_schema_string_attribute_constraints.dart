// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserPoolSchemaStringAttributeConstraints {
  /// Maximum length of an attribute value of the string type.
  final pulumi.Input<String>? maxLength;
  /// Minimum length of an attribute value of the string type.
  final pulumi.Input<String>? minLength;

  /// Creates a new [UserPoolSchemaStringAttributeConstraints].
  /// [maxLength] Maximum length of an attribute value of the string type.
  /// [minLength] Minimum length of an attribute value of the string type.
  const UserPoolSchemaStringAttributeConstraints({
    this.maxLength,
    this.minLength,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxLength': ?maxLength,
      'minLength': ?minLength,
    };
  }

  factory UserPoolSchemaStringAttributeConstraints.fromMap(Map<String, dynamic> map) {
    return UserPoolSchemaStringAttributeConstraints(
      maxLength: (() { final guardedValue = map['maxLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      minLength: (() { final guardedValue = map['minLength']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

