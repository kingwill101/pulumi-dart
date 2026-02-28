// ignore_for_file: unused_element, unnecessary_cast

import 'agent_knowledge_base_knowledge_base_configuration_sql_knowledge_base_configuration_redshift_configuration_query_engine_configuration.dart';
import 'agent_knowledge_base_knowledge_base_configuration_sql_knowledge_base_configuration_redshift_configuration_query_generation_configuration.dart';
import 'agent_knowledge_base_knowledge_base_configuration_sql_knowledge_base_configuration_redshift_configuration_storage_configuration.dart';

class AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfiguration {
  /// Configurations for an Amazon Redshift query engine. See `query_engine_configuration` block for details.
  final AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryEngineConfiguration
      queryEngineConfiguration;

  /// Configurations for generating queries. See `query_generation_configuration` block for details.
  final AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfiguration?
      queryGenerationConfiguration;

  /// Configurations for Amazon Redshift database storage. See `storage_configuration` block for details.
  final AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationStorageConfiguration
      storageConfiguration;

  /// Creates a new [AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfiguration].
  /// [queryEngineConfiguration] Configurations for an Amazon Redshift query engine. See `query_engine_configuration` block for details.
  /// [queryGenerationConfiguration] Configurations for generating queries. See `query_generation_configuration` block for details.
  /// [storageConfiguration] Configurations for Amazon Redshift database storage. See `storage_configuration` block for details.
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
