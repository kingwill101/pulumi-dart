// ignore_for_file: unused_element, unnecessary_cast

class AgentKnowledgeBaseStorageConfigurationNeptuneAnalyticsConfigurationFieldMapping {
  /// Name of the field in which Amazon Bedrock stores metadata about the vector store.
  final String metadataField;

  /// Name of the field in which Amazon Bedrock stores the raw text from your data. The text is split according to the chunking strategy you choose.
  final String textField;

  /// Creates a new [AgentKnowledgeBaseStorageConfigurationNeptuneAnalyticsConfigurationFieldMapping].
  /// [metadataField] Name of the field in which Amazon Bedrock stores metadata about the vector store.
  /// [textField] Name of the field in which Amazon Bedrock stores the raw text from your data. The text is split according to the chunking strategy you choose.
  AgentKnowledgeBaseStorageConfigurationNeptuneAnalyticsConfigurationFieldMapping({
    required this.metadataField,
    required this.textField,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadataField': metadataField,
      'textField': textField,
    };
  }

  factory AgentKnowledgeBaseStorageConfigurationNeptuneAnalyticsConfigurationFieldMapping.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentKnowledgeBaseStorageConfigurationNeptuneAnalyticsConfigurationFieldMapping(
      metadataField: map['metadataField'] as String,
      textField: map['textField'] as String,
    );
  }
}
