// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'user_pool_schema_number_attribute_constraints.dart';
import 'user_pool_schema_string_attribute_constraints.dart';

class UserPoolSchema {
  /// Attribute data type. Must be one of `Boolean`, `Number`, `String`, `DateTime`.
  final pulumi.Input<String> attributeDataType;
  /// Whether the attribute type is developer only.
  final pulumi.Input<bool?>? developerOnlyAttribute;
  /// Whether the attribute can be changed once it has been created.
  final pulumi.Input<bool?>? mutable;
  /// Name of the attribute.
  final pulumi.Input<String> name;
  /// Configuration block for the constraints for an attribute of the number type. Detailed below.
  final pulumi.Input<UserPoolSchemaNumberAttributeConstraints?>? numberAttributeConstraints;
  /// Whether a user pool attribute is required. If the attribute is required and the user does not provide a value, registration or sign-in will fail.
  final pulumi.Input<bool?>? required;
  /// Constraints for an attribute of the string type. Detailed below.
  final pulumi.Input<UserPoolSchemaStringAttributeConstraints?>? stringAttributeConstraints;

  /// Creates a new [UserPoolSchema].
  /// [attributeDataType] Attribute data type. Must be one of `Boolean`, `Number`, `String`, `DateTime`.
  /// [developerOnlyAttribute] Whether the attribute type is developer only.
  /// [mutable] Whether the attribute can be changed once it has been created.
  /// [name] Name of the attribute.
  /// [numberAttributeConstraints] Configuration block for the constraints for an attribute of the number type. Detailed below.
  /// [required] Whether a user pool attribute is required. If the attribute is required and the user does not provide a value, registration or sign-in will fail.
  /// [stringAttributeConstraints] Constraints for an attribute of the string type. Detailed below.
  const UserPoolSchema({
    required this.attributeDataType,
    this.developerOnlyAttribute,
    this.mutable,
    required this.name,
    this.numberAttributeConstraints,
    this.required,
    this.stringAttributeConstraints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributeDataType': attributeDataType,
      'developerOnlyAttribute': ?developerOnlyAttribute,
      'mutable': ?mutable,
      'name': name,
      'numberAttributeConstraints': ?pulumi.Input.mapOptionalInputValue<UserPoolSchemaNumberAttributeConstraints, Map<String, dynamic>>(numberAttributeConstraints, (value) => value.toMap()),
      'required': ?required,
      'stringAttributeConstraints': ?pulumi.Input.mapOptionalInputValue<UserPoolSchemaStringAttributeConstraints, Map<String, dynamic>>(stringAttributeConstraints, (value) => value.toMap()),
    };
  }

  factory UserPoolSchema.fromMap(Map<String, dynamic> map) {
    return UserPoolSchema(
      attributeDataType: pulumi.Input.fromValue(map['attributeDataType'] as String),
      developerOnlyAttribute: (() { final guardedValue = map['developerOnlyAttribute']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      mutable: (() { final guardedValue = map['mutable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      numberAttributeConstraints: (() { final guardedValue = map['numberAttributeConstraints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserPoolSchemaNumberAttributeConstraints.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      required: (() { final guardedValue = map['required']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      stringAttributeConstraints: (() { final guardedValue = map['stringAttributeConstraints']; if (guardedValue == null) return null; return pulumi.Input.fromValue(UserPoolSchemaStringAttributeConstraints.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
