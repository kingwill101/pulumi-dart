// ignore_for_file: unused_element, unnecessary_cast

class AgentKnowledgeBaseStorageConfigurationPineconeConfigurationFieldMapping {
  /// Name of the field in which Amazon Bedrock stores metadata about the vector store.
  final String metadataField;

  /// Name of the field in which Amazon Bedrock stores the raw text from your data. The text is split according to the chunking strategy you choose.
  final String textField;

  /// Creates a new [AgentKnowledgeBaseStorageConfigurationPineconeConfigurationFieldMapping].
  /// [metadataField] Name of the field in which Amazon Bedrock stores metadata about the vector store.
  /// [textField] Name of the field in which Amazon Bedrock stores the raw text from your data. The text is split according to the chunking strategy you choose.
  AgentKnowledgeBaseStorageConfigurationPineconeConfigurationFieldMapping({
    required this.metadataField,
    required this.textField,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['metadataField'] = metadataField;
    map['textField'] = textField;
    return map;
  }

  factory AgentKnowledgeBaseStorageConfigurationPineconeConfigurationFieldMapping.fromMap(
      Map<String, dynamic> map) {
    return AgentKnowledgeBaseStorageConfigurationPineconeConfigurationFieldMapping(
      metadataField: map['metadataField'] as String,
      textField: map['textField'] as String,
    );
  }
}
