// ignore_for_file: unused_element, unnecessary_cast

import 'agent_knowledge_base_knowledge_base_configuration_sql_knowledge_base_configuration_redshift_configuration_query_generation_configuration_generation_context.dart';

class AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfiguration {
  /// Time after which query generation will time out.
  final int? executionTimeoutSeconds;

  /// Configurations for context to use during query generation. See `generation_context` block for details.
  final AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContext?
      generationContext;

  /// Creates a new [AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfiguration].
  /// [executionTimeoutSeconds] Time after which query generation will time out.
  /// [generationContext] Configurations for context to use during query generation. See `generation_context` block for details.
  AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfiguration({
    this.executionTimeoutSeconds,
    this.generationContext,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final executionTimeoutSecondsValue = executionTimeoutSeconds;
    if (executionTimeoutSecondsValue != null) {
      map['executionTimeoutSeconds'] = executionTimeoutSecondsValue;
    }
    final generationContextValue = generationContext;
    if (generationContextValue != null) {
      map['generationContext'] = generationContextValue.toMap();
    }
    return map;
  }

  factory AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfiguration(
      executionTimeoutSeconds: map['executionTimeoutSeconds'] == null
          ? null
          : map['executionTimeoutSeconds'] as int,
      generationContext: map['generationContext'] == null
          ? null
          : AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContext
              .fromMap(
                  (map['generationContext'] as Map).cast<String, dynamic>()),
    );
  }
}
