// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentKnowledgeBaseStorageConfigurationRdsConfigurationFieldMapping {
  /// Name for the universal metadata field where Amazon Bedrock will store any custom metadata from your data source.
  final pulumi.Input<String>? customMetadataField;
  /// Name of the field in which Amazon Bedrock stores metadata about the vector store.
  final pulumi.Input<String> metadataField;
  /// Name of the field in which Amazon Bedrock stores the ID for each entry.
  final pulumi.Input<String> primaryKeyField;
  /// Name of the field in which Amazon Bedrock stores the raw text from your data. The text is split according to the chunking strategy you choose.
  final pulumi.Input<String> textField;
  /// Name of the field in which Amazon Bedrock stores the vector embeddings for your data sources.
  final pulumi.Input<String> vectorField;

  /// Creates a new [AgentKnowledgeBaseStorageConfigurationRdsConfigurationFieldMapping].
  /// [customMetadataField] Name for the universal metadata field where Amazon Bedrock will store any custom metadata from your data source.
  /// [metadataField] Name of the field in which Amazon Bedrock stores metadata about the vector store.
  /// [primaryKeyField] Name of the field in which Amazon Bedrock stores the ID for each entry.
  /// [textField] Name of the field in which Amazon Bedrock stores the raw text from your data. The text is split according to the chunking strategy you choose.
  /// [vectorField] Name of the field in which Amazon Bedrock stores the vector embeddings for your data sources.
  AgentKnowledgeBaseStorageConfigurationRdsConfigurationFieldMapping({
    this.customMetadataField,
    required this.metadataField,
    required this.primaryKeyField,
    required this.textField,
    required this.vectorField,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customMetadataField': ?customMetadataField,
      'metadataField': metadataField,
      'primaryKeyField': primaryKeyField,
      'textField': textField,
      'vectorField': vectorField,
    };
  }

  factory AgentKnowledgeBaseStorageConfigurationRdsConfigurationFieldMapping.fromMap(Map<String, dynamic> map) {
    return AgentKnowledgeBaseStorageConfigurationRdsConfigurationFieldMapping(
      customMetadataField: map['customMetadataField'] == null ? null : (map['customMetadataField'] as String).input(),
      metadataField: (map['metadataField'] as String).input(),
      primaryKeyField: (map['primaryKeyField'] as String).input(),
      textField: (map['textField'] as String).input(),
      vectorField: (map['vectorField'] as String).input(),
    );
  }
}

