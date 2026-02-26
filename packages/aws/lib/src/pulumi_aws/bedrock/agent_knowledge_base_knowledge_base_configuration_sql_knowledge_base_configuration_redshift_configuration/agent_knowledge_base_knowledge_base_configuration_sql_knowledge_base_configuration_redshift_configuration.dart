// ignore_for_file: unused_element, unnecessary_cast

import '../agent_knowledge_base_knowledge_base_configuration_sql_knowledge_base_configuration_redshift_configuration_query_engine_configuration/agent_knowledge_base_knowledge_base_configuration_sql_knowledge_base_configuration_redshift_configuration_query_engine_configuration.dart';
import '../agent_knowledge_base_knowledge_base_configuration_sql_knowledge_base_configuration_redshift_configuration_query_generation_configuration/agent_knowledge_base_knowledge_base_configuration_sql_knowledge_base_configuration_redshift_configuration_query_generation_configuration.dart';
import '../agent_knowledge_base_knowledge_base_configuration_sql_knowledge_base_configuration_redshift_configuration_storage_configuration/agent_knowledge_base_knowledge_base_configuration_sql_knowledge_base_configuration_redshift_configuration_storage_configuration.dart';

class AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfiguration {
  /// Configurations for an Amazon Redshift query engine. See <span pulumi-lang-nodejs="`queryEngineConfiguration`" pulumi-lang-dotnet="`QueryEngineConfiguration`" pulumi-lang-go="`queryEngineConfiguration`" pulumi-lang-python="`query_engine_configuration`" pulumi-lang-yaml="`queryEngineConfiguration`" pulumi-lang-java="`queryEngineConfiguration`">`query_engine_configuration`</span> block for details.
  final AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfiguration
      queryEngineConfiguration;

  /// Configurations for generating queries. See <span pulumi-lang-nodejs="`queryGenerationConfiguration`" pulumi-lang-dotnet="`QueryGenerationConfiguration`" pulumi-lang-go="`queryGenerationConfiguration`" pulumi-lang-python="`query_generation_configuration`" pulumi-lang-yaml="`queryGenerationConfiguration`" pulumi-lang-java="`queryGenerationConfiguration`">`query_generation_configuration`</span> block for details.
  final AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfiguration?
      queryGenerationConfiguration;

  /// Configurations for Amazon Redshift database storage. See <span pulumi-lang-nodejs="`storageConfiguration`" pulumi-lang-dotnet="`StorageConfiguration`" pulumi-lang-go="`storageConfiguration`" pulumi-lang-python="`storage_configuration`" pulumi-lang-yaml="`storageConfiguration`" pulumi-lang-java="`storageConfiguration`">`storage_configuration`</span> block for details.
  final AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationStorageConfiguration
      storageConfiguration;

  AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfiguration({
    required this.queryEngineConfiguration,
    this.queryGenerationConfiguration,
    required this.storageConfiguration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['queryEngineConfiguration'] = queryEngineConfiguration.toMap();
    final queryGenerationConfigurationValue = queryGenerationConfiguration;
    if (queryGenerationConfigurationValue != null) {
      map['queryGenerationConfiguration'] =
          queryGenerationConfigurationValue.toMap();
    }
    map['storageConfiguration'] = storageConfiguration.toMap();
    return map;
  }

  factory AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfiguration(
      queryEngineConfiguration:
          AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfiguration
              .fromMap((map['queryEngineConfiguration'] as Map)
                  .cast<String, dynamic>()),
      queryGenerationConfiguration: map['queryGenerationConfiguration'] == null
          ? null
          : AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfiguration
              .fromMap((map['queryGenerationConfiguration'] as Map)
                  .cast<String, dynamic>()),
      storageConfiguration:
          AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationStorageConfiguration
              .fromMap(
                  (map['storageConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}
