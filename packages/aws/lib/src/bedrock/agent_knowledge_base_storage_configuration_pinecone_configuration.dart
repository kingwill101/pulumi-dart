// ignore_for_file: unused_element, unnecessary_cast

import 'agent_knowledge_base_storage_configuration_pinecone_configuration_field_mapping.dart';

class AgentKnowledgeBaseStorageConfigurationPineconeConfiguration {
  /// Endpoint URL for your index management page.
  final String connectionString;

  /// ARN of the secret that you created in AWS Secrets Manager that is linked to your Pinecone API key.
  final String credentialsSecretArn;

  /// The names of the fields to which to map information about the vector store. This block supports the following arguments:
  final AgentKnowledgeBaseStorageConfigurationPineconeConfigurationFieldMapping
  fieldMapping;

  /// Namespace to be used to write new data to your database.
  final String? namespace;

  /// Creates a new [AgentKnowledgeBaseStorageConfigurationPineconeConfiguration].
  /// [connectionString] Endpoint URL for your index management page.
  /// [credentialsSecretArn] ARN of the secret that you created in AWS Secrets Manager that is linked to your Pinecone API key.
  /// [fieldMapping] The names of the fields to which to map information about the vector store. This block supports the following arguments:
  /// [namespace] Namespace to be used to write new data to your database.
  AgentKnowledgeBaseStorageConfigurationPineconeConfiguration({
    required this.connectionString,
    required this.credentialsSecretArn,
    required this.fieldMapping,
    this.namespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionString': connectionString,
      'credentialsSecretArn': credentialsSecretArn,
      'fieldMapping': fieldMapping.toMap(),
      'namespace': ?namespace,
    };
  }

  factory AgentKnowledgeBaseStorageConfigurationPineconeConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentKnowledgeBaseStorageConfigurationPineconeConfiguration(
      connectionString: map['connectionString'] as String,
      credentialsSecretArn: map['credentialsSecretArn'] as String,
      fieldMapping:
          AgentKnowledgeBaseStorageConfigurationPineconeConfigurationFieldMapping.fromMap(
            (map['fieldMapping'] as Map).cast<String, dynamic>(),
          ),
      namespace: map['namespace'] == null ? null : map['namespace'] as String,
    );
  }
}
