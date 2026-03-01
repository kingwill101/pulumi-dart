// ignore_for_file: unused_element, unnecessary_cast

import 'agent_knowledge_base_knowledge_base_configuration_sql_knowledge_base_configuration_redshift_configuration_query_engine_configuration_provisioned_configuration.dart';
import 'agent_knowledge_base_knowledge_base_configuration_sql_knowledge_base_configuration_redshift_configuration_query_engine_configuration_serverless_configuration.dart';

class AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfiguration {
  /// Configurations for a provisioned Amazon Redshift query engine. See `provisioned_configuration` block for details.
  final AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationProvisionedConfiguration?
  provisionedConfiguration;

  /// Configurations for a serverless Amazon Redshift query engine. See `serverless_configuration` block for details.
  final AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationServerlessConfiguration?
  serverlessConfiguration;

  /// Type of query engine. Valid values: `SERVERLESS`, `PROVISIONED`.
  final String type;

  /// Creates a new [AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfiguration].
  /// [provisionedConfiguration] Configurations for a provisioned Amazon Redshift query engine. See `provisioned_configuration` block for details.
  /// [serverlessConfiguration] Configurations for a serverless Amazon Redshift query engine. See `serverless_configuration` block for details.
  /// [type] Type of query engine. Valid values: `SERVERLESS`, `PROVISIONED`.
  AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfiguration({
    this.provisionedConfiguration,
    this.serverlessConfiguration,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisionedConfiguration': ?provisionedConfiguration == null
          ? null
          : provisionedConfiguration!.toMap(),
      'serverlessConfiguration': ?serverlessConfiguration == null
          ? null
          : serverlessConfiguration!.toMap(),
      'type': type,
    };
  }

  factory AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfiguration(
      provisionedConfiguration: map['provisionedConfiguration'] == null
          ? null
          : AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationProvisionedConfiguration.fromMap(
              (map['provisionedConfiguration'] as Map).cast<String, dynamic>(),
            ),
      serverlessConfiguration: map['serverlessConfiguration'] == null
          ? null
          : AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationServerlessConfiguration.fromMap(
              (map['serverlessConfiguration'] as Map).cast<String, dynamic>(),
            ),
      type: map['type'] as String,
    );
  }
}
