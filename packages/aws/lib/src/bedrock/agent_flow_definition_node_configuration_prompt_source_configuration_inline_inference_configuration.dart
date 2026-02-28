// ignore_for_file: unused_element, unnecessary_cast

import 'agent_flow_definition_node_configuration_prompt_source_configuration_inline_inference_configuration_text.dart';

class AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineInferenceConfiguration {
  final AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineInferenceConfigurationText? text;

  /// Creates a new [AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineInferenceConfiguration].
  /// [text] Optional.
  AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineInferenceConfiguration({
    this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'text': ?text == null ? null : text!.toMap(),
    };
  }

  factory AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineInferenceConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineInferenceConfiguration(
      text: map['text'] == null ? null : AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineInferenceConfigurationText.fromMap((map['text'] as Map).cast<String, dynamic>()),
    );
  }
}

