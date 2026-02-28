// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'attribute_definition_category_healthcare_v1beta1.dart';

/// {@template pulumi_healthcare_v1beta1_attribute_definition_healthcare_v1beta1_args_doc}
/// The set of arguments for AttributeDefinition.
/// {@endtemplate}
/// {@macro pulumi_healthcare_v1beta1_attribute_definition_healthcare_v1beta1_args_doc}
class AttributeDefinitionHealthcareV1beta1Args {
  /// Possible values for the attribute. The number of allowed values must not exceed 500. An empty list is invalid. The list can only be expanded after creation.
  final pulumi.Input<List<String>> allowedValues;
  /// Required. The ID of the Attribute definition to create. The string must match the following regex: `_a-zA-Z{0,255}` and must not be a reserved keyword within the Common Expression Language as listed on https://github.com/google/cel-spec/blob/master/doc/langdef.md.
  final pulumi.Input<String> attributeDefinitionId;
  /// The category of the attribute. The value of this field cannot be changed after creation.
  final pulumi.Input<AttributeDefinitionCategoryHealthcareV1beta1> category;
  /// Optional. Default values of the attribute in Consents. If no default values are specified, it defaults to an empty value.
  final pulumi.Input<List<String>>? consentDefaultValues;
  final pulumi.Input<String> consentStoreId;
  /// Optional. Default value of the attribute in User data mappings. If no default value is specified, it defaults to an empty value. This field is only applicable to attributes of the category `RESOURCE`.
  final pulumi.Input<String>? dataMappingDefaultValue;
  final pulumi.Input<String> datasetId;
  /// Optional. A description of the attribute.
  final pulumi.Input<String>? description;
  final pulumi.Input<String>? location;
  /// Resource name of the Attribute definition, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/attributeDefinitions/{attribute_definition_id}`. Cannot be changed after creation.
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Creates a new [AttributeDefinitionHealthcareV1beta1Args].
  /// [allowedValues] Possible values for the attribute. The number of allowed values must not exceed 500. An empty list is invalid. The list can only be expanded after creation.
  /// [attributeDefinitionId] Required. The ID of the Attribute definition to create. The string must match the following regex: `_a-zA-Z{0,255}` and must not be a reserved keyword within the Common Expression Language as listed on https://github.com/google/cel-spec/blob/master/doc/langdef.md.
  /// [category] The category of the attribute. The value of this field cannot be changed after creation.
  /// [consentDefaultValues] Optional. Default values of the attribute in Consents. If no default values are specified, it defaults to an empty value.
  /// [consentStoreId] Required.
  /// [dataMappingDefaultValue] Optional. Default value of the attribute in User data mappings. If no default value is specified, it defaults to an empty value. This field is only applicable to attributes of the category `RESOURCE`.
  /// [datasetId] Required.
  /// [description] Optional. A description of the attribute.
  /// [location] Optional.
  /// [name] Resource name of the Attribute definition, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/attributeDefinitions/{attribute_definition_id}`. Cannot be changed after creation.
  /// [project] Optional.
  AttributeDefinitionHealthcareV1beta1Args({
    required List<String> allowedValues,
    required String attributeDefinitionId,
    required AttributeDefinitionCategoryHealthcareV1beta1 category,
    List<String>? consentDefaultValues,
    required String consentStoreId,
    String? dataMappingDefaultValue,
    required String datasetId,
    String? description,
    String? location,
    String? name,
    String? project,
  }) :
      allowedValues = pulumi.Input.asInput<List<String>>(allowedValues),
      attributeDefinitionId = pulumi.Input.asInput<String>(attributeDefinitionId),
      category = pulumi.Input.asInput<AttributeDefinitionCategoryHealthcareV1beta1>(category),
      consentDefaultValues = pulumi.Input.asOptionalInput<List<String>>(consentDefaultValues),
      consentStoreId = pulumi.Input.asInput<String>(consentStoreId),
      dataMappingDefaultValue = pulumi.Input.asOptionalInput<String>(dataMappingDefaultValue),
      datasetId = pulumi.Input.asInput<String>(datasetId),
      description = pulumi.Input.asOptionalInput<String>(description),
      location = pulumi.Input.asOptionalInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedValues': allowedValues,
      'attributeDefinitionId': attributeDefinitionId,
      'category': pulumi.Input.mapInputValue<AttributeDefinitionCategoryHealthcareV1beta1, String>(category, (value) => value.value),
      'consentDefaultValues': ?consentDefaultValues,
      'consentStoreId': consentStoreId,
      'dataMappingDefaultValue': ?dataMappingDefaultValue,
      'datasetId': datasetId,
      'description': ?description,
      'location': ?location,
      'name': ?name,
      'project': ?project,
    };
  }

  factory AttributeDefinitionHealthcareV1beta1Args.fromMap(Map<String, dynamic> map) {
    return AttributeDefinitionHealthcareV1beta1Args(
      allowedValues: (map['allowedValues'] as List).cast<String>(),
      attributeDefinitionId: map['attributeDefinitionId'] as String,
      category: AttributeDefinitionCategoryHealthcareV1beta1.fromValue(map['category'] as String),
      consentDefaultValues: map['consentDefaultValues'] == null ? null : (map['consentDefaultValues'] as List).cast<String>(),
      consentStoreId: map['consentStoreId'] as String,
      dataMappingDefaultValue: map['dataMappingDefaultValue'] == null ? null : map['dataMappingDefaultValue'] as String,
      datasetId: map['datasetId'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

