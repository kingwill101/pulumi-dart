// ignore_for_file: unused_element, unnecessary_cast

class AgentKnowledgeBaseStorageConfigurationRedisEnterpriseCloudConfigurationFieldMapping {
  /// Name of the field in which Amazon Bedrock stores metadata about the vector store.
  final String? metadataField;

  /// Name of the field in which Amazon Bedrock stores the raw text from your data. The text is split according to the chunking strategy you choose.
  final String? textField;

  /// Name of the field in which Amazon Bedrock stores the vector embeddings for your data sources.
  final String? vectorField;

  /// Creates a new [AgentKnowledgeBaseStorageConfigurationRedisEnterpriseCloudConfigurationFieldMapping].
  /// [metadataField] Name of the field in which Amazon Bedrock stores metadata about the vector store.
  /// [textField] Name of the field in which Amazon Bedrock stores the raw text from your data. The text is split according to the chunking strategy you choose.
  /// [vectorField] Name of the field in which Amazon Bedrock stores the vector embeddings for your data sources.
  AgentKnowledgeBaseStorageConfigurationRedisEnterpriseCloudConfigurationFieldMapping({
    this.metadataField,
    this.textField,
    this.vectorField,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final metadataFieldValue = metadataField;
    if (metadataFieldValue != null) {
      map['metadataField'] = metadataFieldValue;
    }
    final textFieldValue = textField;
    if (textFieldValue != null) {
      map['textField'] = textFieldValue;
    }
    final vectorFieldValue = vectorField;
    if (vectorFieldValue != null) {
      map['vectorField'] = vectorFieldValue;
    }
    return map;
  }

  factory AgentKnowledgeBaseStorageConfigurationRedisEnterpriseCloudConfigurationFieldMapping.fromMap(
      Map<String, dynamic> map) {
    return AgentKnowledgeBaseStorageConfigurationRedisEnterpriseCloudConfigurationFieldMapping(
      metadataField:
          map['metadataField'] == null ? null : map['metadataField'] as String,
      textField: map['textField'] == null ? null : map['textField'] as String,
      vectorField:
          map['vectorField'] == null ? null : map['vectorField'] as String,
    );
  }
}
