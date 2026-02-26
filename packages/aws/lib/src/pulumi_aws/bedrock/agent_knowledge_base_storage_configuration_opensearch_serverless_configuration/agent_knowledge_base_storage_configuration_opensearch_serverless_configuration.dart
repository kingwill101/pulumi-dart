// ignore_for_file: unused_element, unnecessary_cast

import '../agent_knowledge_base_storage_configuration_opensearch_serverless_configuration_field_mapping/agent_knowledge_base_storage_configuration_opensearch_serverless_configuration_field_mapping.dart';

class AgentKnowledgeBaseStorageConfigurationOpensearchServerlessConfiguration {
  /// ARN of the OpenSearch Service vector store.
  final String collectionArn;

  /// The names of the fields to which to map information about the vector store. This block supports the following arguments:
  final AgentKnowledgeBaseStorageConfigurationOpensearchServerlessConfigurationFieldMapping
      fieldMapping;

  /// Name of the vector store.
  final String vectorIndexName;

  AgentKnowledgeBaseStorageConfigurationOpensearchServerlessConfiguration({
    required this.collectionArn,
    required this.fieldMapping,
    required this.vectorIndexName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['collectionArn'] = collectionArn;
    map['fieldMapping'] = fieldMapping.toMap();
    map['vectorIndexName'] = vectorIndexName;
    return map;
  }

  factory AgentKnowledgeBaseStorageConfigurationOpensearchServerlessConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentKnowledgeBaseStorageConfigurationOpensearchServerlessConfiguration(
      collectionArn: map['collectionArn'] as String,
      fieldMapping:
          AgentKnowledgeBaseStorageConfigurationOpensearchServerlessConfigurationFieldMapping
              .fromMap((map['fieldMapping'] as Map).cast<String, dynamic>()),
      vectorIndexName: map['vectorIndexName'] as String,
    );
  }
}
