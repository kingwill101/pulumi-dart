// ignore_for_file: unused_element, unnecessary_cast

import 'agent_knowledge_base_knowledge_base_configuration_sql_knowledge_base_configuration_redshift_configuration_query_engine_configuration_serverless_configuration_auth_configuration.dart';

class AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationServerlessConfiguration {
  /// Configurations for authentication to a Redshift Serverless. See `auth_configuration` block for details.
  final AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationServerlessConfigurationAuthConfiguration authConfiguration;
  /// ARN of the Amazon Redshift workgroup.
  final String workgroupArn;

  /// Creates a new [AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationServerlessConfiguration].
  /// [authConfiguration] Configurations for authentication to a Redshift Serverless. See `auth_configuration` block for details.
  /// [workgroupArn] ARN of the Amazon Redshift workgroup.
  AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationServerlessConfiguration({
    required this.authConfiguration,
    required this.workgroupArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authConfiguration': authConfiguration.toMap(),
      'workgroupArn': workgroupArn,
    };
  }

  factory AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationServerlessConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationServerlessConfiguration(
      authConfiguration: AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationServerlessConfigurationAuthConfiguration.fromMap((map['authConfiguration'] as Map).cast<String, dynamic>()),
      workgroupArn: map['workgroupArn'] as String,
    );
  }
}

