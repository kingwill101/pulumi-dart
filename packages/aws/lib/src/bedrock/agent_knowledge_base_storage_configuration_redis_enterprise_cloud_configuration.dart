// ignore_for_file: unused_element, unnecessary_cast

import 'agent_knowledge_base_storage_configuration_redis_enterprise_cloud_configuration_field_mapping.dart';

class AgentKnowledgeBaseStorageConfigurationRedisEnterpriseCloudConfiguration {
  /// ARN of the secret that you created in AWS Secrets Manager that is linked to your Redis Enterprise Cloud database.
  final String credentialsSecretArn;

  /// Endpoint URL of the Redis Enterprise Cloud database.
  final String endpoint;

  /// The names of the fields to which to map information about the vector store. This block supports the following arguments:
  final AgentKnowledgeBaseStorageConfigurationRedisEnterpriseCloudConfigurationFieldMapping
      fieldMapping;

  /// Name of the vector index.
  final String vectorIndexName;

  /// Creates a new [AgentKnowledgeBaseStorageConfigurationRedisEnterpriseCloudConfiguration].
  /// [credentialsSecretArn] ARN of the secret that you created in AWS Secrets Manager that is linked to your Redis Enterprise Cloud database.
  /// [endpoint] Endpoint URL of the Redis Enterprise Cloud database.
  /// [fieldMapping] The names of the fields to which to map information about the vector store. This block supports the following arguments:
  /// [vectorIndexName] Name of the vector index.
  AgentKnowledgeBaseStorageConfigurationRedisEnterpriseCloudConfiguration({
    required this.credentialsSecretArn,
    required this.endpoint,
    required this.fieldMapping,
    required this.vectorIndexName,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['credentialsSecretArn'] = credentialsSecretArn;
    map['endpoint'] = endpoint;
    map['fieldMapping'] = fieldMapping.toMap();
    map['vectorIndexName'] = vectorIndexName;
    return map;
  }

  factory AgentKnowledgeBaseStorageConfigurationRedisEnterpriseCloudConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentKnowledgeBaseStorageConfigurationRedisEnterpriseCloudConfiguration(
      credentialsSecretArn: map['credentialsSecretArn'] as String,
      endpoint: map['endpoint'] as String,
      fieldMapping:
          AgentKnowledgeBaseStorageConfigurationRedisEnterpriseCloudConfigurationFieldMapping
              .fromMap((map['fieldMapping'] as Map).cast<String, dynamic>()),
      vectorIndexName: map['vectorIndexName'] as String,
    );
  }
}
