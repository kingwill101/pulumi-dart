// ignore_for_file: unused_element, unnecessary_cast

import 'agent_flow_definition_node_configuration_prompt_guardrail_configuration.dart';
import 'agent_flow_definition_node_configuration_prompt_source_configuration.dart';

class AgentFlowDefinitionNodeConfigurationPrompt {
  /// Contains configurations for a guardrail to apply during query and response generation for the knowledge base in this configuration. See Guardrail Configuration for more information.
  final AgentFlowDefinitionNodeConfigurationPromptGuardrailConfiguration? guardrailConfiguration;
  final AgentFlowDefinitionNodeConfigurationPromptSourceConfiguration? sourceConfiguration;

  /// Creates a new [AgentFlowDefinitionNodeConfigurationPrompt].
  /// [guardrailConfiguration] Contains configurations for a guardrail to apply during query and response generation for the knowledge base in this configuration. See Guardrail Configuration for more information.
  /// [sourceConfiguration] Optional.
  AgentFlowDefinitionNodeConfigurationPrompt({
    this.guardrailConfiguration,
    this.sourceConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'guardrailConfiguration': ?guardrailConfiguration == null ? null : guardrailConfiguration!.toMap(),
      'sourceConfiguration': ?sourceConfiguration == null ? null : sourceConfiguration!.toMap(),
    };
  }

  factory AgentFlowDefinitionNodeConfigurationPrompt.fromMap(Map<String, dynamic> map) {
    return AgentFlowDefinitionNodeConfigurationPrompt(
      guardrailConfiguration: map['guardrailConfiguration'] == null ? null : AgentFlowDefinitionNodeConfigurationPromptGuardrailConfiguration.fromMap((map['guardrailConfiguration'] as Map).cast<String, dynamic>()),
      sourceConfiguration: map['sourceConfiguration'] == null ? null : AgentFlowDefinitionNodeConfigurationPromptSourceConfiguration.fromMap((map['sourceConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

