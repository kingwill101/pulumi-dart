// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_flow_definition_node_configuration_prompt_guardrail_configuration.dart';
import 'agent_flow_definition_node_configuration_prompt_source_configuration.dart';

class AgentFlowDefinitionNodeConfigurationPrompt {
  /// Configures a guardrail for prompt generation. See Guardrail Configuration for more information.
  final pulumi.Input<AgentFlowDefinitionNodeConfigurationPromptGuardrailConfiguration?>? guardrailConfiguration;
  /// Configures the prompt source, either inline or from Prompt management. See Source Configuration for more information.
  final pulumi.Input<AgentFlowDefinitionNodeConfigurationPromptSourceConfiguration?>? sourceConfiguration;

  /// Creates a new [AgentFlowDefinitionNodeConfigurationPrompt].
  /// [guardrailConfiguration] Configures a guardrail for prompt generation. See Guardrail Configuration for more information.
  /// [sourceConfiguration] Configures the prompt source, either inline or from Prompt management. See Source Configuration for more information.
  const AgentFlowDefinitionNodeConfigurationPrompt({
    this.guardrailConfiguration,
    this.sourceConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'guardrailConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentFlowDefinitionNodeConfigurationPromptGuardrailConfiguration, Map<String, dynamic>>(guardrailConfiguration, (value) => value.toMap()),
      'sourceConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentFlowDefinitionNodeConfigurationPromptSourceConfiguration, Map<String, dynamic>>(sourceConfiguration, (value) => value.toMap()),
    };
  }

  factory AgentFlowDefinitionNodeConfigurationPrompt.fromMap(Map<String, dynamic> map) {
    return AgentFlowDefinitionNodeConfigurationPrompt(
      guardrailConfiguration: (() { final guardedValue = map['guardrailConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentFlowDefinitionNodeConfigurationPromptGuardrailConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sourceConfiguration: (() { final guardedValue = map['sourceConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentFlowDefinitionNodeConfigurationPromptSourceConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
