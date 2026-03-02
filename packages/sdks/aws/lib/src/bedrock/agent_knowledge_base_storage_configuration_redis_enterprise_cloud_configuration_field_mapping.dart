// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AgentKnowledgeBaseStorageConfigurationRedisEnterpriseCloudConfigurationFieldMapping {
  /// Name of the field in which Amazon Bedrock stores metadata about the vector store.
  final pulumi.Input<String>? metadataField;
  /// Name of the field in which Amazon Bedrock stores the raw text from your data. The text is split according to the chunking strategy you choose.
  final pulumi.Input<String>? textField;
  /// Name of the field in which Amazon Bedrock stores the vector embeddings for your data sources.
  final pulumi.Input<String>? vectorField;

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
    return <String, dynamic>{
      'metadataField': ?metadataField,
      'textField': ?textField,
      'vectorField': ?vectorField,
    };
  }

  factory AgentKnowledgeBaseStorageConfigurationRedisEnterpriseCloudConfigurationFieldMapping.fromMap(Map<String, dynamic> map) {
    return AgentKnowledgeBaseStorageConfigurationRedisEnterpriseCloudConfigurationFieldMapping(
      metadataField: map['metadataField'] == null ? null : ((map['metadataField'] as String).input()).input(),
      textField: map['textField'] == null ? null : ((map['textField'] as String).input()).input(),
      vectorField: map['vectorField'] == null ? null : ((map['vectorField'] as String).input()).input(),
    );
  }
}

