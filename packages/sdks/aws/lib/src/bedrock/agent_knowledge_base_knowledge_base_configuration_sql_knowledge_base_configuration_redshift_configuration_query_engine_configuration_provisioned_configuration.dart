// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_knowledge_base_knowledge_base_configuration_sql_knowledge_base_configuration_redshift_configuration_query_engine_configuration_provisioned_configuration_auth_configuration.dart';

class AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationProvisionedConfiguration {
  /// Configurations for authentication to Amazon Redshift. See `auth_configuration` block for details.
  final pulumi.Input<AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationProvisionedConfigurationAuthConfiguration> authConfiguration;
  /// ID of the Amazon Redshift cluster.
  final pulumi.Input<String> clusterIdentifier;

  /// Creates a new [AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationProvisionedConfiguration].
  /// [authConfiguration] Configurations for authentication to Amazon Redshift. See `auth_configuration` block for details.
  /// [clusterIdentifier] ID of the Amazon Redshift cluster.
  AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationProvisionedConfiguration({
    required this.authConfiguration,
    required this.clusterIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authConfiguration': pulumi.Input.mapInputValue<AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationProvisionedConfigurationAuthConfiguration, Map<String, dynamic>>(authConfiguration, (value) => value.toMap()),
      'clusterIdentifier': clusterIdentifier,
    };
  }

  factory AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationProvisionedConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationProvisionedConfiguration(
      authConfiguration: pulumi.Input.fromValue(AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationProvisionedConfigurationAuthConfiguration.fromMap((map['authConfiguration']! as Map).cast<String, dynamic>())),
      clusterIdentifier: pulumi.Input.fromValue(map['clusterIdentifier'] as String),
    );
  }
}

