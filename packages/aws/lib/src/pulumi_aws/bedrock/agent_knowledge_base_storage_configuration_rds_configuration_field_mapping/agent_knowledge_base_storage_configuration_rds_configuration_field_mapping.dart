// ignore_for_file: unused_element, unnecessary_cast

class AgentKnowledgeBaseStorageConfigurationRdsConfigurationFieldMapping {
  /// Name for the universal metadata field where Amazon Bedrock will store any custom metadata from your data source.
  final String? customMetadataField;

  /// Name of the field in which Amazon Bedrock stores metadata about the vector store.
  final String metadataField;

  /// Name of the field in which Amazon Bedrock stores the ID for each entry.
  final String primaryKeyField;

  /// Name of the field in which Amazon Bedrock stores the raw text from your data. The text is split according to the chunking strategy you choose.
  final String textField;

  /// Name of the field in which Amazon Bedrock stores the vector embeddings for your data sources.
  final String vectorField;

  AgentKnowledgeBaseStorageConfigurationRdsConfigurationFieldMapping({
    this.customMetadataField,
    required this.metadataField,
    required this.primaryKeyField,
    required this.textField,
    required this.vectorField,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customMetadataFieldValue = customMetadataField;
    if (customMetadataFieldValue != null) {
      map['customMetadataField'] = customMetadataFieldValue;
    }
    map['metadataField'] = metadataField;
    map['primaryKeyField'] = primaryKeyField;
    map['textField'] = textField;
    map['vectorField'] = vectorField;
    return map;
  }

  factory AgentKnowledgeBaseStorageConfigurationRdsConfigurationFieldMapping.fromMap(
      Map<String, dynamic> map) {
    return AgentKnowledgeBaseStorageConfigurationRdsConfigurationFieldMapping(
      customMetadataField: map['customMetadataField'] == null
          ? null
          : map['customMetadataField'] as String,
      metadataField: map['metadataField'] as String,
      primaryKeyField: map['primaryKeyField'] as String,
      textField: map['textField'] as String,
      vectorField: map['vectorField'] as String,
    );
  }
}
