// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_knowledge_base_storage_configuration_pinecone_configuration_field_mapping.dart';

class AgentKnowledgeBaseStorageConfigurationPineconeConfiguration {
  /// Endpoint URL for your index management page.
  final pulumi.Input<String> connectionString;
  /// ARN of the secret that you created in AWS Secrets Manager that is linked to your Pinecone API key.
  final pulumi.Input<String> credentialsSecretArn;
  /// The names of the fields to which to map information about the vector store. This block supports the following arguments:
  final pulumi.Input<AgentKnowledgeBaseStorageConfigurationPineconeConfigurationFieldMapping> fieldMapping;
  /// Namespace to be used to write new data to your database.
  final pulumi.Input<String>? namespace;

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
      'fieldMapping': pulumi.Input.mapInputValue<AgentKnowledgeBaseStorageConfigurationPineconeConfigurationFieldMapping, Map<String, dynamic>>(fieldMapping, (value) => value.toMap()),
      'namespace': ?namespace,
    };
  }

  factory AgentKnowledgeBaseStorageConfigurationPineconeConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentKnowledgeBaseStorageConfigurationPineconeConfiguration(
      connectionString: (map['connectionString'] as String).input(),
      credentialsSecretArn: (map['credentialsSecretArn'] as String).input(),
      fieldMapping: (AgentKnowledgeBaseStorageConfigurationPineconeConfigurationFieldMapping.fromMap((map['fieldMapping'] as Map).cast<String, dynamic>())).input(),
      namespace: map['namespace'] == null ? null : (map['namespace'] as String).input(),
    );
  }
}

