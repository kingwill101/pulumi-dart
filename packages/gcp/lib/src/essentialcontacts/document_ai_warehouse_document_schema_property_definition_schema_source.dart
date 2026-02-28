// ignore_for_file: unused_element, unnecessary_cast


class DocumentAiWarehouseDocumentSchemaPropertyDefinitionSchemaSource {
  /// The schema name in the source.
  final String? name;
  /// The Doc AI processor type name.
  final String? processorType;

  /// Creates a new [DocumentAiWarehouseDocumentSchemaPropertyDefinitionSchemaSource].
  /// [name] The schema name in the source.
  /// [processorType] The Doc AI processor type name.
  DocumentAiWarehouseDocumentSchemaPropertyDefinitionSchemaSource({
    this.name,
    this.processorType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'processorType': ?processorType,
    };
  }

  factory DocumentAiWarehouseDocumentSchemaPropertyDefinitionSchemaSource.fromMap(Map<String, dynamic> map) {
    return DocumentAiWarehouseDocumentSchemaPropertyDefinitionSchemaSource(
      name: map['name'] == null ? null : map['name'] as String,
      processorType: map['processorType'] == null ? null : map['processorType'] as String,
    );
  }
}

