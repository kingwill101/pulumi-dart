// ignore_for_file: unused_element, unnecessary_cast

class DocumentAiWarehouseDocumentSchemaPropertyDefinitionPropertyTypeOptionsPropertyDefinitionEnumTypeOptions {
  /// List of possible enum values.
  final List<String> possibleValues;

  /// Make sure the enum property value provided in the document is in the possile value list during document creation. The validation check runs by default.
  final bool? validationCheckDisabled;

  DocumentAiWarehouseDocumentSchemaPropertyDefinitionPropertyTypeOptionsPropertyDefinitionEnumTypeOptions({
    required this.possibleValues,
    this.validationCheckDisabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['possibleValues'] = possibleValues;
    final validationCheckDisabledValue = validationCheckDisabled;
    if (validationCheckDisabledValue != null) {
      map['validationCheckDisabled'] = validationCheckDisabledValue;
    }
    return map;
  }

  factory DocumentAiWarehouseDocumentSchemaPropertyDefinitionPropertyTypeOptionsPropertyDefinitionEnumTypeOptions.fromMap(
      Map<String, dynamic> map) {
    return DocumentAiWarehouseDocumentSchemaPropertyDefinitionPropertyTypeOptionsPropertyDefinitionEnumTypeOptions(
      possibleValues: (map['possibleValues'] as List).cast<String>(),
      validationCheckDisabled: map['validationCheckDisabled'] == null
          ? null
          : map['validationCheckDisabled'] as bool,
    );
  }
}
