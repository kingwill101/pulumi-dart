// ignore_for_file: unused_element, unnecessary_cast

import '../user_pool_schema_number_attribute_constraints/user_pool_schema_number_attribute_constraints.dart';
import '../user_pool_schema_string_attribute_constraints/user_pool_schema_string_attribute_constraints.dart';

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
    final map = <String, dynamic>{};
    map['attributeDataType'] = attributeDataType;
    final developerOnlyAttributeValue = developerOnlyAttribute;
    if (developerOnlyAttributeValue != null) {
      map['developerOnlyAttribute'] = developerOnlyAttributeValue;
    }
    final mutableValue = mutable;
    if (mutableValue != null) {
      map['mutable'] = mutableValue;
    }
    map['name'] = name;
    final numberAttributeConstraintsValue = numberAttributeConstraints;
    if (numberAttributeConstraintsValue != null) {
      map['numberAttributeConstraints'] =
          numberAttributeConstraintsValue.toMap();
    }
    final requiredValue = required;
    if (requiredValue != null) {
      map['required'] = requiredValue;
    }
    final stringAttributeConstraintsValue = stringAttributeConstraints;
    if (stringAttributeConstraintsValue != null) {
      map['stringAttributeConstraints'] =
          stringAttributeConstraintsValue.toMap();
    }
    return map;
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
                  .cast<String, dynamic>()),
      required: map['required'] == null ? null : map['required'] as bool,
      stringAttributeConstraints: map['stringAttributeConstraints'] == null
          ? null
          : UserPoolSchemaStringAttributeConstraints.fromMap(
              (map['stringAttributeConstraints'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
