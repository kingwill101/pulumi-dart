// ignore_for_file: unused_element, unnecessary_cast

class DocumentAiWarehouseDocumentSchemaPropertyDefinitionSchemaSource {
  /// The schema name in the source.
  final String? name;

  /// The Doc AI processor type name.
  final String? processorType;

  DocumentAiWarehouseDocumentSchemaPropertyDefinitionSchemaSource({
    this.name,
    this.processorType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final processorTypeValue = processorType;
    if (processorTypeValue != null) {
      map['processorType'] = processorTypeValue;
    }
    return map;
  }

  factory DocumentAiWarehouseDocumentSchemaPropertyDefinitionSchemaSource.fromMap(
      Map<String, dynamic> map) {
    return DocumentAiWarehouseDocumentSchemaPropertyDefinitionSchemaSource(
      name: map['name'] == null ? null : map['name'] as String,
      processorType:
          map['processorType'] == null ? null : map['processorType'] as String,
    );
  }
}
