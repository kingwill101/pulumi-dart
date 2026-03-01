// ignore_for_file: unused_element, unnecessary_cast

import 'agent_knowledge_base_storage_configuration_opensearch_managed_cluster_configuration_field_mapping.dart';

class AgentKnowledgeBaseStorageConfigurationOpensearchManagedClusterConfiguration {
  /// ARN of the OpenSearch domain.
  final String domainArn;

  /// Endpoint URL of the OpenSearch domain.
  final String domainEndpoint;

  /// The names of the fields to which to map information about the vector store. This block supports the following arguments:
  final AgentKnowledgeBaseStorageConfigurationOpensearchManagedClusterConfigurationFieldMapping
  fieldMapping;

  /// Name of the vector store.
  final String vectorIndexName;

  /// Creates a new [AgentKnowledgeBaseStorageConfigurationOpensearchManagedClusterConfiguration].
  /// [domainArn] ARN of the OpenSearch domain.
  /// [domainEndpoint] Endpoint URL of the OpenSearch domain.
  /// [fieldMapping] The names of the fields to which to map information about the vector store. This block supports the following arguments:
  /// [vectorIndexName] Name of the vector store.
  AgentKnowledgeBaseStorageConfigurationOpensearchManagedClusterConfiguration({
    required this.domainArn,
    required this.domainEndpoint,
    required this.fieldMapping,
    required this.vectorIndexName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainArn': domainArn,
      'domainEndpoint': domainEndpoint,
      'fieldMapping': fieldMapping.toMap(),
      'vectorIndexName': vectorIndexName,
    };
  }

  factory AgentKnowledgeBaseStorageConfigurationOpensearchManagedClusterConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentKnowledgeBaseStorageConfigurationOpensearchManagedClusterConfiguration(
      domainArn: map['domainArn'] as String,
      domainEndpoint: map['domainEndpoint'] as String,
      fieldMapping:
          AgentKnowledgeBaseStorageConfigurationOpensearchManagedClusterConfigurationFieldMapping.fromMap(
            (map['fieldMapping'] as Map).cast<String, dynamic>(),
          ),
      vectorIndexName: map['vectorIndexName'] as String,
    );
  }
}
