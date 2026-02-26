// ignore_for_file: unused_element, unnecessary_cast

import '../agent_flow_definition_node_configuration_prompt_guardrail_configuration/agent_flow_definition_node_configuration_prompt_guardrail_configuration.dart';
import '../agent_flow_definition_node_configuration_prompt_source_configuration/agent_flow_definition_node_configuration_prompt_source_configuration.dart';

class AgentFlowDefinitionNodeConfigurationPrompt {
  /// Contains configurations for a guardrail to apply during query and response generation for the knowledge base in this configuration. See Guardrail Configuration for more information.
  final AgentFlowDefinitionNodeConfigurationPromptGuardrailConfiguration?
      guardrailConfiguration;
  final AgentFlowDefinitionNodeConfigurationPromptSourceConfiguration?
      sourceConfiguration;

  AgentFlowDefinitionNodeConfigurationPrompt({
    this.guardrailConfiguration,
    this.sourceConfiguration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final guardrailConfigurationValue = guardrailConfiguration;
    if (guardrailConfigurationValue != null) {
      map['guardrailConfiguration'] = guardrailConfigurationValue.toMap();
    }
    final sourceConfigurationValue = sourceConfiguration;
    if (sourceConfigurationValue != null) {
      map['sourceConfiguration'] = sourceConfigurationValue.toMap();
    }
    return map;
  }

  factory AgentFlowDefinitionNodeConfigurationPrompt.fromMap(
      Map<String, dynamic> map) {
    return AgentFlowDefinitionNodeConfigurationPrompt(
      guardrailConfiguration: map['guardrailConfiguration'] == null
          ? null
          : AgentFlowDefinitionNodeConfigurationPromptGuardrailConfiguration
              .fromMap((map['guardrailConfiguration'] as Map)
                  .cast<String, dynamic>()),
      sourceConfiguration: map['sourceConfiguration'] == null
          ? null
          : AgentFlowDefinitionNodeConfigurationPromptSourceConfiguration
              .fromMap(
                  (map['sourceConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}
