// ignore_for_file: unused_element, unnecessary_cast


class DocumentAiWarehouseDocumentSchemaPropertyDefinitionPropertyTypeOptionsPropertyDefinitionEnumTypeOptions {
  /// List of possible enum values.
  final List<String> possibleValues;
  /// Make sure the enum property value provided in the document is in the possile value list during document creation. The validation check runs by default.
  final bool? validationCheckDisabled;

  /// Creates a new [DocumentAiWarehouseDocumentSchemaPropertyDefinitionPropertyTypeOptionsPropertyDefinitionEnumTypeOptions].
  /// [possibleValues] List of possible enum values.
  /// [validationCheckDisabled] Make sure the enum property value provided in the document is in the possile value list during document creation. The validation check runs by default.
  DocumentAiWarehouseDocumentSchemaPropertyDefinitionPropertyTypeOptionsPropertyDefinitionEnumTypeOptions({
    required this.possibleValues,
    this.validationCheckDisabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'possibleValues': possibleValues,
      'validationCheckDisabled': ?validationCheckDisabled,
    };
  }

  factory DocumentAiWarehouseDocumentSchemaPropertyDefinitionPropertyTypeOptionsPropertyDefinitionEnumTypeOptions.fromMap(Map<String, dynamic> map) {
    return DocumentAiWarehouseDocumentSchemaPropertyDefinitionPropertyTypeOptionsPropertyDefinitionEnumTypeOptions(
      possibleValues: (map['possibleValues'] as List).cast<String>(),
      validationCheckDisabled: map['validationCheckDisabled'] == null ? null : map['validationCheckDisabled'] as bool,
    );
  }
}

