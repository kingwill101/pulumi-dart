// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_flow_definition_node_configuration_prompt_source_configuration_inline_inference_configuration_text.dart';

class AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineInferenceConfiguration {
  final pulumi.Input<
    AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineInferenceConfigurationText
  >?
  text;

  /// Creates a new [AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineInferenceConfiguration].
  /// [text] Optional.
  AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineInferenceConfiguration({
    this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'text':
          ?pulumi.Input.mapOptionalInputValue<
            AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineInferenceConfigurationText,
            Map<String, dynamic>
          >(text, (value) => value.toMap()),
    };
  }

  factory AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineInferenceConfiguration.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineInferenceConfiguration(
      text: (() {
        final guardedValue = map['text'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineInferenceConfigurationText.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
