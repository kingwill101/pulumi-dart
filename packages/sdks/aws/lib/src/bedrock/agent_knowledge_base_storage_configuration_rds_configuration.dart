// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_knowledge_base_storage_configuration_rds_configuration_field_mapping.dart';

class AgentKnowledgeBaseStorageConfigurationRdsConfiguration {
  /// ARN of the secret that you created in AWS Secrets Manager that is linked to your Amazon RDS database.
  final pulumi.Input<String> credentialsSecretArn;
  /// Name of your Amazon RDS database.
  final pulumi.Input<String> databaseName;
  /// Names of the fields to which to map information about the vector store. This block supports the following arguments:
  final pulumi.Input<AgentKnowledgeBaseStorageConfigurationRdsConfigurationFieldMapping> fieldMapping;
  /// ARN of the vector store.
  final pulumi.Input<String> resourceArn;
  /// Name of the table in the database.
  final pulumi.Input<String> tableName;

  /// Creates a new [AgentKnowledgeBaseStorageConfigurationRdsConfiguration].
  /// [credentialsSecretArn] ARN of the secret that you created in AWS Secrets Manager that is linked to your Amazon RDS database.
  /// [databaseName] Name of your Amazon RDS database.
  /// [fieldMapping] Names of the fields to which to map information about the vector store. This block supports the following arguments:
  /// [resourceArn] ARN of the vector store.
  /// [tableName] Name of the table in the database.
  const AgentKnowledgeBaseStorageConfigurationRdsConfiguration({
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
      'fieldMapping': pulumi.Input.mapInputValue<AgentKnowledgeBaseStorageConfigurationRdsConfigurationFieldMapping, Map<String, dynamic>>(fieldMapping, (value) => value.toMap()),
      'resourceArn': resourceArn,
      'tableName': tableName,
    };
  }

  factory AgentKnowledgeBaseStorageConfigurationRdsConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentKnowledgeBaseStorageConfigurationRdsConfiguration(
      credentialsSecretArn: pulumi.Input.fromValue(map['credentialsSecretArn'] as String),
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      fieldMapping: pulumi.Input.fromValue(AgentKnowledgeBaseStorageConfigurationRdsConfigurationFieldMapping.fromMap((map['fieldMapping']! as Map).cast<String, dynamic>())),
      resourceArn: pulumi.Input.fromValue(map['resourceArn'] as String),
      tableName: pulumi.Input.fromValue(map['tableName'] as String),
    );
  }
}
