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
  const AgentKnowledgeBaseStorageConfigurationRedisEnterpriseCloudConfigurationFieldMapping({
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
      metadataField: (() { final guardedValue = map['metadataField']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      textField: (() { final guardedValue = map['textField']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vectorField: (() { final guardedValue = map['vectorField']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
