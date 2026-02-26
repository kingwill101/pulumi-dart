// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_user_pool_schema_attribute_number_attribute_constraint/get_user_pool_schema_attribute_number_attribute_constraint.dart';
import '../get_user_pool_schema_attribute_string_attribute_constraint/get_user_pool_schema_attribute_string_attribute_constraint.dart';

class GetUserPoolSchemaAttribute {
  /// - Data type of the attribute (e.g., string, number).
  final String attributeDataType;

  /// - Whether the attribute is for developer use only.
  final bool developerOnlyAttribute;

  /// - Whether the attribute can be changed after user creation.
  final bool mutable;

  /// - Name of the attribute.
  final String name;
  final List<GetUserPoolSchemaAttributeNumberAttributeConstraint>
      numberAttributeConstraints;

  /// - Whether the attribute is required during user registration.
  /// * number_attribute_constraints - Constraints for numeric attributes.
  /// * string_attribute_constraints - Constraints for string attributes.
  final bool required;
  final List<GetUserPoolSchemaAttributeStringAttributeConstraint>
      stringAttributeConstraints;

  GetUserPoolSchemaAttribute({
    required this.attributeDataType,
    required this.developerOnlyAttribute,
    required this.mutable,
    required this.name,
    required this.numberAttributeConstraints,
    required this.required,
    required this.stringAttributeConstraints,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['attributeDataType'] = attributeDataType;
    map['developerOnlyAttribute'] = developerOnlyAttribute;
    map['mutable'] = mutable;
    map['name'] = name;
    map['numberAttributeConstraints'] = Input.encodeList<
            GetUserPoolSchemaAttributeNumberAttributeConstraint,
            Map<String, dynamic>>(
        numberAttributeConstraints, (value) => value.toMap());
    map['required'] = required;
    map['stringAttributeConstraints'] = Input.encodeList<
            GetUserPoolSchemaAttributeStringAttributeConstraint,
            Map<String, dynamic>>(
        stringAttributeConstraints, (value) => value.toMap());
    return map;
  }

  factory GetUserPoolSchemaAttribute.fromMap(Map<String, dynamic> map) {
    return GetUserPoolSchemaAttribute(
      attributeDataType: map['attributeDataType'] as String,
      developerOnlyAttribute: map['developerOnlyAttribute'] as bool,
      mutable: map['mutable'] as bool,
      name: map['name'] as String,
      numberAttributeConstraints:
          Input.decodeList<GetUserPoolSchemaAttributeNumberAttributeConstraint>(
              map['numberAttributeConstraints'],
              (value) =>
                  GetUserPoolSchemaAttributeNumberAttributeConstraint.fromMap(
                      (value as Map).cast<String, dynamic>())),
      required: map['required'] as bool,
      stringAttributeConstraints:
          Input.decodeList<GetUserPoolSchemaAttributeStringAttributeConstraint>(
              map['stringAttributeConstraints'],
              (value) =>
                  GetUserPoolSchemaAttributeStringAttributeConstraint.fromMap(
                      (value as Map).cast<String, dynamic>())),
    );
  }
}
