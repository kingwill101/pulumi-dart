// ignore_for_file: unused_element, unnecessary_cast

class AgentKnowledgeBaseStorageConfigurationNeptuneAnalyticsConfigurationFieldMapping {
  /// Name of the field in which Amazon Bedrock stores metadata about the vector store.
  final String metadataField;

  /// Name of the field in which Amazon Bedrock stores the raw text from your data. The text is split according to the chunking strategy you choose.
  final String textField;

  AgentKnowledgeBaseStorageConfigurationNeptuneAnalyticsConfigurationFieldMapping({
    required this.metadataField,
    required this.textField,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['metadataField'] = metadataField;
    map['textField'] = textField;
    return map;
  }

  factory AgentKnowledgeBaseStorageConfigurationNeptuneAnalyticsConfigurationFieldMapping.fromMap(
      Map<String, dynamic> map) {
    return AgentKnowledgeBaseStorageConfigurationNeptuneAnalyticsConfigurationFieldMapping(
      metadataField: map['metadataField'] as String,
      textField: map['textField'] as String,
    );
  }
}
