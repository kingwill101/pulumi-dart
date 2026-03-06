// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentKnowledgeBaseStorageConfigurationOpensearchManagedClusterConfigurationFieldMapping {
  /// Name of the field in which Amazon Bedrock stores metadata about the vector store.
  final pulumi.Input<String> metadataField;
  /// Name of the field in which Amazon Bedrock stores the raw text from your data. The text is split according to the chunking strategy you choose.
  final pulumi.Input<String> textField;
  /// Name of the field in which Amazon Bedrock stores the vector embeddings for your data sources.
  final pulumi.Input<String> vectorField;

  /// Creates a new [AgentKnowledgeBaseStorageConfigurationOpensearchManagedClusterConfigurationFieldMapping].
  /// [metadataField] Name of the field in which Amazon Bedrock stores metadata about the vector store.
  /// [textField] Name of the field in which Amazon Bedrock stores the raw text from your data. The text is split according to the chunking strategy you choose.
  /// [vectorField] Name of the field in which Amazon Bedrock stores the vector embeddings for your data sources.
  const AgentKnowledgeBaseStorageConfigurationOpensearchManagedClusterConfigurationFieldMapping({
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

  factory AgentKnowledgeBaseStorageConfigurationOpensearchManagedClusterConfigurationFieldMapping.fromMap(Map<String, dynamic> map) {
    return AgentKnowledgeBaseStorageConfigurationOpensearchManagedClusterConfigurationFieldMapping(
      metadataField: pulumi.Input.fromValue(map['metadataField'] as String),
      textField: pulumi.Input.fromValue(map['textField'] as String),
      vectorField: pulumi.Input.fromValue(map['vectorField'] as String),
    );
  }
}

