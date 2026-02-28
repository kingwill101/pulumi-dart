// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getAttributeDefinition.
class GetAttributeDefinitionResult {
  /// Possible values for the attribute. The number of allowed values must not exceed 500. An empty list is invalid. The list can only be expanded after creation.
  final List<String> allowedValues;

  /// The category of the attribute. The value of this field cannot be changed after creation.
  final String category;

  /// Optional. Default values of the attribute in Consents. If no default values are specified, it defaults to an empty value.
  final List<String> consentDefaultValues;

  /// Optional. Default value of the attribute in User data mappings. If no default value is specified, it defaults to an empty value. This field is only applicable to attributes of the category `RESOURCE`.
  final String dataMappingDefaultValue;

  /// Optional. A description of the attribute.
  final String description;

  /// Resource name of the Attribute definition, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/attributeDefinitions/{attribute_definition_id}`. Cannot be changed after creation.
  final String name;

  /// Creates a new [GetAttributeDefinitionResult].
  /// [allowedValues] Possible values for the attribute. The number of allowed values must not exceed 500. An empty list is invalid. The list can only be expanded after creation.
  /// [category] The category of the attribute. The value of this field cannot be changed after creation.
  /// [consentDefaultValues] Optional. Default values of the attribute in Consents. If no default values are specified, it defaults to an empty value.
  /// [dataMappingDefaultValue] Optional. Default value of the attribute in User data mappings. If no default value is specified, it defaults to an empty value. This field is only applicable to attributes of the category `RESOURCE`.
  /// [description] Optional. A description of the attribute.
  /// [name] Resource name of the Attribute definition, of the form `projects/{project_id}/locations/{location_id}/datasets/{dataset_id}/consentStores/{consent_store_id}/attributeDefinitions/{attribute_definition_id}`. Cannot be changed after creation.
  GetAttributeDefinitionResult({
    required this.allowedValues,
    required this.category,
    required this.consentDefaultValues,
    required this.dataMappingDefaultValue,
    required this.description,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowedValues'] = allowedValues;
    map['category'] = category;
    map['consentDefaultValues'] = consentDefaultValues;
    map['dataMappingDefaultValue'] = dataMappingDefaultValue;
    map['description'] = description;
    map['name'] = name;
    return map;
  }

  factory GetAttributeDefinitionResult.fromMap(Map<String, dynamic> map) {
    return GetAttributeDefinitionResult(
      allowedValues: (map['allowedValues'] as List).cast<String>(),
      category: map['category'] as String,
      consentDefaultValues:
          (map['consentDefaultValues'] as List).cast<String>(),
      dataMappingDefaultValue: map['dataMappingDefaultValue'] as String,
      description: map['description'] as String,
      name: map['name'] as String,
    );
  }
}
