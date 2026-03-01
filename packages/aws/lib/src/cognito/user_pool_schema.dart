// ignore_for_file: unused_element, unnecessary_cast

import 'user_pool_schema_number_attribute_constraints.dart';
import 'user_pool_schema_string_attribute_constraints.dart';

class UserPoolSchema {
  /// Attribute data type. Must be one of `Boolean`, `Number`, `String`, `DateTime`.
  final String attributeDataType;

  /// Whether the attribute type is developer only.
  final bool? developerOnlyAttribute;

  /// Whether the attribute can be changed once it has been created.
  final bool? mutable;

  /// Name of the attribute.
  final String name;

  /// Configuration block for the constraints for an attribute of the number type. Detailed below.
  final UserPoolSchemaNumberAttributeConstraints? numberAttributeConstraints;

  /// Whether a user pool attribute is required. If the attribute is required and the user does not provide a value, registration or sign-in will fail.
  final bool? required;

  /// Constraints for an attribute of the string type. Detailed below.
  final UserPoolSchemaStringAttributeConstraints? stringAttributeConstraints;

  /// Creates a new [UserPoolSchema].
  /// [attributeDataType] Attribute data type. Must be one of `Boolean`, `Number`, `String`, `DateTime`.
  /// [developerOnlyAttribute] Whether the attribute type is developer only.
  /// [mutable] Whether the attribute can be changed once it has been created.
  /// [name] Name of the attribute.
  /// [numberAttributeConstraints] Configuration block for the constraints for an attribute of the number type. Detailed below.
  /// [required] Whether a user pool attribute is required. If the attribute is required and the user does not provide a value, registration or sign-in will fail.
  /// [stringAttributeConstraints] Constraints for an attribute of the string type. Detailed below.
  UserPoolSchema({
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
      'numberAttributeConstraints': ?numberAttributeConstraints == null
          ? null
          : numberAttributeConstraints!.toMap(),
      'required': ?required,
      'stringAttributeConstraints': ?stringAttributeConstraints == null
          ? null
          : stringAttributeConstraints!.toMap(),
    };
  }

  factory UserPoolSchema.fromMap(Map<String, dynamic> map) {
    return UserPoolSchema(
      attributeDataType: map['attributeDataType'] as String,
      developerOnlyAttribute: map['developerOnlyAttribute'] == null
          ? null
          : map['developerOnlyAttribute'] as bool,
      mutable: map['mutable'] == null ? null : map['mutable'] as bool,
      name: map['name'] as String,
      numberAttributeConstraints: map['numberAttributeConstraints'] == null
          ? null
          : UserPoolSchemaNumberAttributeConstraints.fromMap(
              (map['numberAttributeConstraints'] as Map)
                  .cast<String, dynamic>(),
            ),
      required: map['required'] == null ? null : map['required'] as bool,
      stringAttributeConstraints: map['stringAttributeConstraints'] == null
          ? null
          : UserPoolSchemaStringAttributeConstraints.fromMap(
              (map['stringAttributeConstraints'] as Map)
                  .cast<String, dynamic>(),
            ),
    );
  }
}
