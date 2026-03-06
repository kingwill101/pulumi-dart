// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_user_pool_schema_attribute_number_attribute_constraint.dart';
import 'get_user_pool_schema_attribute_string_attribute_constraint.dart';

class GetUserPoolSchemaAttribute {
  /// - Data type of the attribute (e.g., string, number).
  final pulumi.Input<String> attributeDataType;
  /// - Whether the attribute is for developer use only.
  final pulumi.Input<bool> developerOnlyAttribute;
  /// - Whether the attribute can be changed after user creation.
  final pulumi.Input<bool> mutable;
  /// - Name of the attribute.
  final pulumi.Input<String> name;
  final pulumi.Input<List<GetUserPoolSchemaAttributeNumberAttributeConstraint>> numberAttributeConstraints;
  /// - Whether the attribute is required during user registration.
  /// * number_attribute_constraints - Constraints for numeric attributes.
  /// * string_attribute_constraints - Constraints for string attributes.
  final pulumi.Input<bool> required;
  final pulumi.Input<List<GetUserPoolSchemaAttributeStringAttributeConstraint>> stringAttributeConstraints;

  /// Creates a new [GetUserPoolSchemaAttribute].
  /// [attributeDataType] - Data type of the attribute (e.g., string, number).
  /// [developerOnlyAttribute] - Whether the attribute is for developer use only.
  /// [mutable] - Whether the attribute can be changed after user creation.
  /// [name] - Name of the attribute.
  /// [numberAttributeConstraints] Required.
  /// [required] - Whether the attribute is required during user registration.
  /// [stringAttributeConstraints] Required.
  const GetUserPoolSchemaAttribute({
    required this.attributeDataType,
    required this.developerOnlyAttribute,
    required this.mutable,
    required this.name,
    required this.numberAttributeConstraints,
    required this.required,
    required this.stringAttributeConstraints,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'attributeDataType': attributeDataType,
      'developerOnlyAttribute': developerOnlyAttribute,
      'mutable': mutable,
      'name': name,
      'numberAttributeConstraints': pulumi.Input.mapInputValue<List<GetUserPoolSchemaAttributeNumberAttributeConstraint>, List<Map<String, dynamic>>>(numberAttributeConstraints, (value) => pulumi.Input.encodeList<GetUserPoolSchemaAttributeNumberAttributeConstraint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'required': required,
      'stringAttributeConstraints': pulumi.Input.mapInputValue<List<GetUserPoolSchemaAttributeStringAttributeConstraint>, List<Map<String, dynamic>>>(stringAttributeConstraints, (value) => pulumi.Input.encodeList<GetUserPoolSchemaAttributeStringAttributeConstraint, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetUserPoolSchemaAttribute.fromMap(Map<String, dynamic> map) {
    return GetUserPoolSchemaAttribute(
      attributeDataType: pulumi.Input.fromValue(map['attributeDataType'] as String),
      developerOnlyAttribute: pulumi.Input.fromValue(map['developerOnlyAttribute'] as bool),
      mutable: pulumi.Input.fromValue(map['mutable'] as bool),
      name: pulumi.Input.fromValue(map['name'] as String),
      numberAttributeConstraints: pulumi.Input.fromValue(pulumi.Input.decodeList<GetUserPoolSchemaAttributeNumberAttributeConstraint>(map['numberAttributeConstraints']!, (value) => GetUserPoolSchemaAttributeNumberAttributeConstraint.fromMap((value as Map).cast<String, dynamic>()))),
      required: pulumi.Input.fromValue(map['required'] as bool),
      stringAttributeConstraints: pulumi.Input.fromValue(pulumi.Input.decodeList<GetUserPoolSchemaAttributeStringAttributeConstraint>(map['stringAttributeConstraints']!, (value) => GetUserPoolSchemaAttributeStringAttributeConstraint.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

