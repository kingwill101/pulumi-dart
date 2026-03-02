// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class UserPoolSchemaNumberAttributeConstraints {
  /// Maximum value of an attribute that is of the number data type.
  final pulumi.Input<String>? maxValue;
  /// Minimum value of an attribute that is of the number data type.
  final pulumi.Input<String>? minValue;

  /// Creates a new [UserPoolSchemaNumberAttributeConstraints].
  /// [maxValue] Maximum value of an attribute that is of the number data type.
  /// [minValue] Minimum value of an attribute that is of the number data type.
  UserPoolSchemaNumberAttributeConstraints({
    this.maxValue,
    this.minValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'maxValue': ?maxValue,
      'minValue': ?minValue,
    };
  }

  factory UserPoolSchemaNumberAttributeConstraints.fromMap(Map<String, dynamic> map) {
    return UserPoolSchemaNumberAttributeConstraints(
      maxValue: map['maxValue'] == null ? null : ((map['maxValue'] as String).input()).input(),
      minValue: map['minValue'] == null ? null : ((map['minValue'] as String).input()).input(),
    );
  }
}

