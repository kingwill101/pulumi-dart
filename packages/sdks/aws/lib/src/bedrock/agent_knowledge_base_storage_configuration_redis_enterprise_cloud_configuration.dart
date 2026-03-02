// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_knowledge_base_storage_configuration_redis_enterprise_cloud_configuration_field_mapping.dart';

class AgentKnowledgeBaseStorageConfigurationRedisEnterpriseCloudConfiguration {
  /// ARN of the secret that you created in AWS Secrets Manager that is linked to your Redis Enterprise Cloud database.
  final pulumi.Input<String> credentialsSecretArn;
  /// Endpoint URL of the Redis Enterprise Cloud database.
  final pulumi.Input<String> endpoint;
  /// The names of the fields to which to map information about the vector store. This block supports the following arguments:
  final pulumi.Input<AgentKnowledgeBaseStorageConfigurationRedisEnterpriseCloudConfigurationFieldMapping> fieldMapping;
  /// Name of the vector index.
  final pulumi.Input<String> vectorIndexName;

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
    return <String, dynamic>{
      'credentialsSecretArn': credentialsSecretArn,
      'endpoint': endpoint,
      'fieldMapping': pulumi.Input.mapInputValue<AgentKnowledgeBaseStorageConfigurationRedisEnterpriseCloudConfigurationFieldMapping, Map<String, dynamic>>(fieldMapping, (value) => value.toMap()),
      'vectorIndexName': vectorIndexName,
    };
  }

  factory AgentKnowledgeBaseStorageConfigurationRedisEnterpriseCloudConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentKnowledgeBaseStorageConfigurationRedisEnterpriseCloudConfiguration(
      credentialsSecretArn: (map['credentialsSecretArn'] as String).input(),
      endpoint: (map['endpoint'] as String).input(),
      fieldMapping: (AgentKnowledgeBaseStorageConfigurationRedisEnterpriseCloudConfigurationFieldMapping.fromMap((map['fieldMapping']! as Map).cast<String, dynamic>())).input(),
      vectorIndexName: (map['vectorIndexName'] as String).input(),
    );
  }
}

