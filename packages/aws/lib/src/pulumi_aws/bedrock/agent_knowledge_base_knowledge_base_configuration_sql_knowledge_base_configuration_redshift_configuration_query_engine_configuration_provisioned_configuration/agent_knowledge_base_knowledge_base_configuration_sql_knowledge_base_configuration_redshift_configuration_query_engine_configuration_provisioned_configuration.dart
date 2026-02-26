// ignore_for_file: unused_element, unnecessary_cast

import '../agent_knowledge_base_knowledge_base_configuration_sql_knowledge_base_configuration_redshift_configuration_query_engine_configuration_provisioned_configuration_auth_configuration/agent_knowledge_base_knowledge_base_configuration_sql_knowledge_base_configuration_redshift_configuration_query_engine_configuration_provisioned_configuration_auth_configuration.dart';

class AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationProvisionedConfiguration {
  /// Configurations for authentication to Amazon Redshift. See <span pulumi-lang-nodejs="`authConfiguration`" pulumi-lang-dotnet="`AuthConfiguration`" pulumi-lang-go="`authConfiguration`" pulumi-lang-python="`auth_configuration`" pulumi-lang-yaml="`authConfiguration`" pulumi-lang-java="`authConfiguration`">`auth_configuration`</span> block for details.
  final AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationProvisionedConfigurationAuthConfiguration
      authConfiguration;

  /// ID of the Amazon Redshift cluster.
  final String clusterIdentifier;

  AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationProvisionedConfiguration({
    required this.authConfiguration,
    required this.clusterIdentifier,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['authConfiguration'] = authConfiguration.toMap();
    map['clusterIdentifier'] = clusterIdentifier;
    return map;
  }

  factory AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationProvisionedConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationProvisionedConfiguration(
      authConfiguration:
          AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfigurationProvisionedConfigurationAuthConfiguration
              .fromMap(
                  (map['authConfiguration'] as Map).cast<String, dynamic>()),
      clusterIdentifier: map['clusterIdentifier'] as String,
    );
  }
}
