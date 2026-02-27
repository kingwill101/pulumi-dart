// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'attribute_definition_category_healthcare_v1beta1.dart';

/// The set of arguments for AttributeDefinition.
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

  AttributeDefinitionHealthcareV1beta1Args({
    required this.allowedValues,
    required this.attributeDefinitionId,
    required this.category,
    this.consentDefaultValues,
    required this.consentStoreId,
    this.dataMappingDefaultValue,
    required this.datasetId,
    this.description,
    this.location,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowedValues'] = allowedValues;
    map['attributeDefinitionId'] = attributeDefinitionId;
    map['category'] = pulumi.Input.mapInputValue<
        AttributeDefinitionCategoryHealthcareV1beta1,
        String>(category, (value) => value.value);
    final consentDefaultValuesValue = consentDefaultValues;
    if (consentDefaultValuesValue != null) {
      map['consentDefaultValues'] = consentDefaultValuesValue;
    }
    map['consentStoreId'] = consentStoreId;
    final dataMappingDefaultValueValue = dataMappingDefaultValue;
    if (dataMappingDefaultValueValue != null) {
      map['dataMappingDefaultValue'] = dataMappingDefaultValueValue;
    }
    map['datasetId'] = datasetId;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory AttributeDefinitionHealthcareV1beta1Args.fromMap(
      Map<String, dynamic> map) {
    return AttributeDefinitionHealthcareV1beta1Args(
      allowedValues: pulumi.Input.asInput<List<String>>(map['allowedValues']),
      attributeDefinitionId:
          pulumi.Input.asInput<String>(map['attributeDefinitionId']),
      category:
          pulumi.Input.asInput<AttributeDefinitionCategoryHealthcareV1beta1>(
              map['category']),
      consentDefaultValues: pulumi.Input.asOptionalInput<List<String>>(
          map['consentDefaultValues']),
      consentStoreId: pulumi.Input.asInput<String>(map['consentStoreId']),
      dataMappingDefaultValue:
          pulumi.Input.asOptionalInput<String>(map['dataMappingDefaultValue']),
      datasetId: pulumi.Input.asInput<String>(map['datasetId']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
