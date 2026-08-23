// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_knowledge_base_knowledge_base_configuration_sql_knowledge_base_configuration_redshift_configuration_query_generation_configuration_generation_context.dart';

class AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfiguration {
  /// Time after which query generation will time out.
  final pulumi.Input<int>? executionTimeoutSeconds;
  /// Configurations for context to use during query generation. See `generationContext` block for details.
  final pulumi.Input<AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContext>? generationContext;

  /// Creates a new [AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfiguration].
  /// [executionTimeoutSeconds] Time after which query generation will time out.
  /// [generationContext] Configurations for context to use during query generation. See `generationContext` block for details.
  const AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfiguration({
    this.executionTimeoutSeconds,
    this.generationContext,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'executionTimeoutSeconds': ?executionTimeoutSeconds,
      'generationContext': ?pulumi.Input.mapOptionalInputValue<AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContext, Map<String, dynamic>>(generationContext, (value) => value.toMap()),
    };
  }

  factory AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfiguration(
      executionTimeoutSeconds: (() { final guardedValue = map['executionTimeoutSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      generationContext: (() { final guardedValue = map['generationContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentKnowledgeBaseKnowledgeBaseConfigurationSqlKnowledgeBaseConfigurationRedshiftConfigurationQueryGenerationConfigurationGenerationContext.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
