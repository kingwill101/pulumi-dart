// ignore_for_file: unused_element, unnecessary_cast

import 'agent_knowledge_base_storage_configuration_rds_configuration_field_mapping.dart';

class AgentKnowledgeBaseStorageConfigurationRdsConfiguration {
  /// ARN of the secret that you created in AWS Secrets Manager that is linked to your Amazon RDS database.
  final String credentialsSecretArn;
  /// Name of your Amazon RDS database.
  final String databaseName;
  /// Names of the fields to which to map information about the vector store. This block supports the following arguments:
  final AgentKnowledgeBaseStorageConfigurationRdsConfigurationFieldMapping fieldMapping;
  /// ARN of the vector store.
  final String resourceArn;
  /// Name of the table in the database.
  final String tableName;

  /// Creates a new [AgentKnowledgeBaseStorageConfigurationRdsConfiguration].
  /// [credentialsSecretArn] ARN of the secret that you created in AWS Secrets Manager that is linked to your Amazon RDS database.
  /// [databaseName] Name of your Amazon RDS database.
  /// [fieldMapping] Names of the fields to which to map information about the vector store. This block supports the following arguments:
  /// [resourceArn] ARN of the vector store.
  /// [tableName] Name of the table in the database.
  AgentKnowledgeBaseStorageConfigurationRdsConfiguration({
    required this.credentialsSecretArn,
    required this.databaseName,
    required this.fieldMapping,
    required this.resourceArn,
    required this.tableName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentialsSecretArn': credentialsSecretArn,
      'databaseName': databaseName,
      'fieldMapping': fieldMapping.toMap(),
      'resourceArn': resourceArn,
      'tableName': tableName,
    };
  }

  factory AgentKnowledgeBaseStorageConfigurationRdsConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentKnowledgeBaseStorageConfigurationRdsConfiguration(
      credentialsSecretArn: map['credentialsSecretArn'] as String,
      databaseName: map['databaseName'] as String,
      fieldMapping: AgentKnowledgeBaseStorageConfigurationRdsConfigurationFieldMapping.fromMap((map['fieldMapping'] as Map).cast<String, dynamic>()),
      resourceArn: map['resourceArn'] as String,
      tableName: map['tableName'] as String,
    );
  }
}

