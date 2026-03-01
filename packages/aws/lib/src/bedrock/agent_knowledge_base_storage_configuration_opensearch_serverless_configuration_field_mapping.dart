// ignore_for_file: unused_element, unnecessary_cast

class AgentKnowledgeBaseStorageConfigurationOpensearchServerlessConfigurationFieldMapping {
  /// Name of the field in which Amazon Bedrock stores metadata about the vector store.
  final String metadataField;

  /// Name of the field in which Amazon Bedrock stores the raw text from your data. The text is split according to the chunking strategy you choose.
  final String textField;

  /// Name of the field in which Amazon Bedrock stores the vector embeddings for your data sources.
  final String vectorField;

  /// Creates a new [AgentKnowledgeBaseStorageConfigurationOpensearchServerlessConfigurationFieldMapping].
  /// [metadataField] Name of the field in which Amazon Bedrock stores metadata about the vector store.
  /// [textField] Name of the field in which Amazon Bedrock stores the raw text from your data. The text is split according to the chunking strategy you choose.
  /// [vectorField] Name of the field in which Amazon Bedrock stores the vector embeddings for your data sources.
  AgentKnowledgeBaseStorageConfigurationOpensearchServerlessConfigurationFieldMapping({
    required this.metadataField,
    required this.textField,
    required this.vectorField,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadataField': metadataField,
      'textField': textField,
      'vectorField': vectorField,
    };
  }

  factory AgentKnowledgeBaseStorageConfigurationOpensearchServerlessConfigurationFieldMapping.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentKnowledgeBaseStorageConfigurationOpensearchServerlessConfigurationFieldMapping(
      metadataField: map['metadataField'] as String,
      textField: map['textField'] as String,
      vectorField: map['vectorField'] as String,
    );
  }
}
