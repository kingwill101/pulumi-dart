// ignore_for_file: unused_element, unnecessary_cast

class DocumentAiWarehouseDocumentSchemaPropertyDefinitionEnumTypeOptions {
  /// List of possible enum values.
  final List<String> possibleValues;

  /// Make sure the enum property value provided in the document is in the possile value list during document creation. The validation check runs by default.
  final bool? validationCheckDisabled;

  /// Creates a new [DocumentAiWarehouseDocumentSchemaPropertyDefinitionEnumTypeOptions].
  /// [possibleValues] List of possible enum values.
  /// [validationCheckDisabled] Make sure the enum property value provided in the document is in the possile value list during document creation. The validation check runs by default.
  DocumentAiWarehouseDocumentSchemaPropertyDefinitionEnumTypeOptions({
    required this.possibleValues,
    this.validationCheckDisabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'possibleValues': possibleValues,
      'validationCheckDisabled': ?validationCheckDisabled,
    };
  }

  factory DocumentAiWarehouseDocumentSchemaPropertyDefinitionEnumTypeOptions.fromMap(
    Map<String, dynamic> map,
  ) {
    return DocumentAiWarehouseDocumentSchemaPropertyDefinitionEnumTypeOptions(
      possibleValues: (map['possibleValues'] as List).cast<String>(),
      validationCheckDisabled: map['validationCheckDisabled'] == null
          ? null
          : map['validationCheckDisabled'] as bool,
    );
  }
}
