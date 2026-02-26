// ignore_for_file: unused_element, unnecessary_cast

import '../agent_knowledge_base_storage_configuration_opensearch_managed_cluster_configuration_field_mapping/agent_knowledge_base_storage_configuration_opensearch_managed_cluster_configuration_field_mapping.dart';

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

  AgentKnowledgeBaseStorageConfigurationOpensearchManagedClusterConfiguration({
    required this.domainArn,
    required this.domainEndpoint,
    required this.fieldMapping,
    required this.vectorIndexName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['domainArn'] = domainArn;
    map['domainEndpoint'] = domainEndpoint;
    map['fieldMapping'] = fieldMapping.toMap();
    map['vectorIndexName'] = vectorIndexName;
    return map;
  }

  factory AgentKnowledgeBaseStorageConfigurationOpensearchManagedClusterConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentKnowledgeBaseStorageConfigurationOpensearchManagedClusterConfiguration(
      domainArn: map['domainArn'] as String,
      domainEndpoint: map['domainEndpoint'] as String,
      fieldMapping:
          AgentKnowledgeBaseStorageConfigurationOpensearchManagedClusterConfigurationFieldMapping
              .fromMap((map['fieldMapping'] as Map).cast<String, dynamic>()),
      vectorIndexName: map['vectorIndexName'] as String,
    );
  }
}
