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
  UserPoolSchemaNumberAttributeConstraints({this.maxValue, this.minValue});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'maxValue': ?maxValue, 'minValue': ?minValue};
  }

  factory UserPoolSchemaNumberAttributeConstraints.fromMap(
    Map<String, dynamic> map,
  ) {
    return UserPoolSchemaNumberAttributeConstraints(
      maxValue: (() {
        final guardedValue = map['maxValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      minValue: (() {
        final guardedValue = map['minValue'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
