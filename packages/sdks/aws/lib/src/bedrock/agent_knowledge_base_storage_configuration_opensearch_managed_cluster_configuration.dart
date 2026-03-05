// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_knowledge_base_storage_configuration_opensearch_managed_cluster_configuration_field_mapping.dart';

class AgentKnowledgeBaseStorageConfigurationOpensearchManagedClusterConfiguration {
  /// ARN of the OpenSearch domain.
  final pulumi.Input<String> domainArn;
  /// Endpoint URL of the OpenSearch domain.
  final pulumi.Input<String> domainEndpoint;
  /// The names of the fields to which to map information about the vector store. This block supports the following arguments:
  final pulumi.Input<AgentKnowledgeBaseStorageConfigurationOpensearchManagedClusterConfigurationFieldMapping> fieldMapping;
  /// Name of the vector store.
  final pulumi.Input<String> vectorIndexName;

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
      'fieldMapping': pulumi.Input.mapInputValue<AgentKnowledgeBaseStorageConfigurationOpensearchManagedClusterConfigurationFieldMapping, Map<String, dynamic>>(fieldMapping, (value) => value.toMap()),
      'vectorIndexName': vectorIndexName,
    };
  }

  factory AgentKnowledgeBaseStorageConfigurationOpensearchManagedClusterConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentKnowledgeBaseStorageConfigurationOpensearchManagedClusterConfiguration(
      domainArn: pulumi.Input.fromValue(map['domainArn'] as String),
      domainEndpoint: pulumi.Input.fromValue(map['domainEndpoint'] as String),
      fieldMapping: pulumi.Input.fromValue(AgentKnowledgeBaseStorageConfigurationOpensearchManagedClusterConfigurationFieldMapping.fromMap((map['fieldMapping']! as Map).cast<String, dynamic>())),
      vectorIndexName: pulumi.Input.fromValue(map['vectorIndexName'] as String),
    );
  }
}

