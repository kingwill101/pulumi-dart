// ignore_for_file: unused_element, unnecessary_cast

import '../agent_knowledge_base_knowledge_base_configuration_sql_knowledge_base_configuration_redshift_configuration_query_engine_configuration_provisioned_configuration/agent_knowledge_base_knowledge_base_configuration_sql_knowledge_base_configuration_redshift_configuration_query_engine_configuration_provisioned_configuration.dart';
import '../agent_knowledge_base_knowledge_base_configuration_sql_knowledge_base_configuration_redshift_configuration_query_engine_configuration_serverless_configuration/agent_knowledge_base_knowledge_base_configuration_sql_knowledge_base_configuration_redshift_configuration_query_engine_configuration_serverless_configuration.dart';

class AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfiguration {
  /// Configurations for a provisioned Amazon Redshift query engine. See <span pulumi-lang-nodejs="`provisionedConfiguration`" pulumi-lang-dotnet="`ProvisionedConfiguration`" pulumi-lang-go="`provisionedConfiguration`" pulumi-lang-python="`provisioned_configuration`" pulumi-lang-yaml="`provisionedConfiguration`" pulumi-lang-java="`provisionedConfiguration`">`provisioned_configuration`</span> block for details.
  final AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationProvisionedConfiguration?
      provisionedConfiguration;

  /// Configurations for a serverless Amazon Redshift query engine. See <span pulumi-lang-nodejs="`serverlessConfiguration`" pulumi-lang-dotnet="`ServerlessConfiguration`" pulumi-lang-go="`serverlessConfiguration`" pulumi-lang-python="`serverless_configuration`" pulumi-lang-yaml="`serverlessConfiguration`" pulumi-lang-java="`serverlessConfiguration`">`serverless_configuration`</span> block for details.
  final AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationServerlessConfiguration?
      serverlessConfiguration;

  /// Type of query engine. Valid values: `SERVERLESS`, `PROVISIONED`.
  final String type;

  AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfiguration({
    this.provisionedConfiguration,
    this.serverlessConfiguration,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final provisionedConfigurationValue = provisionedConfiguration;
    if (provisionedConfigurationValue != null) {
      map['provisionedConfiguration'] = provisionedConfigurationValue.toMap();
    }
    final serverlessConfigurationValue = serverlessConfiguration;
    if (serverlessConfigurationValue != null) {
      map['serverlessConfiguration'] = serverlessConfigurationValue.toMap();
    }
    map['type'] = type;
    return map;
  }

  factory AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfiguration(
      provisionedConfiguration: map['provisionedConfiguration'] == null
          ? null
          : AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationProvisionedConfiguration
              .fromMap((map['provisionedConfiguration'] as Map)
                  .cast<String, dynamic>()),
      serverlessConfiguration: map['serverlessConfiguration'] == null
          ? null
          : AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationServerlessConfiguration
              .fromMap((map['serverlessConfiguration'] as Map)
                  .cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
