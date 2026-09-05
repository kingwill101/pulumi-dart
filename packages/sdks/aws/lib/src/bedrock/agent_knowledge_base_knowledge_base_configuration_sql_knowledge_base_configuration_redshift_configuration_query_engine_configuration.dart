// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_knowledge_base_knowledge_base_configuration_sql_knowledge_base_configuration_redshift_configuration_query_engine_configuration_provisioned_configuration.dart';
import 'agent_knowledge_base_knowledge_base_configuration_sql_knowledge_base_configuration_redshift_configuration_query_engine_configuration_serverless_configuration.dart';

class AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfiguration {
  /// Configurations for a provisioned Amazon Redshift query engine. See `provisionedConfiguration` block for details.
  final pulumi.Input<AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationProvisionedConfiguration?>? provisionedConfiguration;
  /// Configurations for a serverless Amazon Redshift query engine. See `serverlessConfiguration` block for details.
  final pulumi.Input<AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationServerlessConfiguration?>? serverlessConfiguration;
  /// Type of query engine. Valid values: `SERVERLESS`, `PROVISIONED`.
  final pulumi.Input<String> type;

  /// Creates a new [AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfiguration].
  /// [provisionedConfiguration] Configurations for a provisioned Amazon Redshift query engine. See `provisionedConfiguration` block for details.
  /// [serverlessConfiguration] Configurations for a serverless Amazon Redshift query engine. See `serverlessConfiguration` block for details.
  /// [type] Type of query engine. Valid values: `SERVERLESS`, `PROVISIONED`.
  const AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfiguration({
    this.provisionedConfiguration,
    this.serverlessConfiguration,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'provisionedConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationProvisionedConfiguration, Map<String, dynamic>>(provisionedConfiguration, (value) => value.toMap()),
      'serverlessConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationServerlessConfiguration, Map<String, dynamic>>(serverlessConfiguration, (value) => value.toMap()),
      'type': type,
    };
  }

  factory AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfiguration(
      provisionedConfiguration: (() { final guardedValue = map['provisionedConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationProvisionedConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      serverlessConfiguration: (() { final guardedValue = map['serverlessConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationServerlessConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
