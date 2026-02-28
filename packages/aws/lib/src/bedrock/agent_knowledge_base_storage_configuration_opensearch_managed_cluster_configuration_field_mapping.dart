// ignore_for_file: unused_element, unnecessary_cast

class AgentKnowledgeBaseStorageConfigurationOpensearchManagedClusterConfigurationFieldMapping {
  /// Name of the field in which Amazon Bedrock stores metadata about the vector store.
  final String metadataField;

  /// Name of the field in which Amazon Bedrock stores the raw text from your data. The text is split according to the chunking strategy you choose.
  final String textField;

  /// Name of the field in which Amazon Bedrock stores the vector embeddings for your data sources.
  final String vectorField;

  /// Creates a new [AgentKnowledgeBaseStorageConfigurationOpensearchManagedClusterConfigurationFieldMapping].
  /// [metadataField] Name of the field in which Amazon Bedrock stores metadata about the vector store.
  /// [textField] Name of the field in which Amazon Bedrock stores the raw text from your data. The text is split according to the chunking strategy you choose.
  /// [vectorField] Name of the field in which Amazon Bedrock stores the vector embeddings for your data sources.
  AgentKnowledgeBaseStorageConfigurationOpensearchManagedClusterConfigurationFieldMapping({
    required this.metadataField,
    required this.textField,
    required this.vectorField,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['metadataField'] = metadataField;
    map['textField'] = textField;
    map['vectorField'] = vectorField;
    return map;
  }

  factory AgentKnowledgeBaseStorageConfigurationOpensearchManagedClusterConfigurationFieldMapping.fromMap(
      Map<String, dynamic> map) {
    return AgentKnowledgeBaseStorageConfigurationOpensearchManagedClusterConfigurationFieldMapping(
      metadataField: map['metadataField'] as String,
      textField: map['textField'] as String,
      vectorField: map['vectorField'] as String,
    );
  }
}
