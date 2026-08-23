// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_flow_definition_node_configuration_prompt_source_configuration_inline_template_configuration_chat_tool_configuration_tool_choice_tool.dart';

class AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolChoice {
  /// Defines tools, at least one of which must be requested by the model. No text is generated but the results of tool use are sent back to the model to help generate a response. This block has no fields.
  final pulumi.Input<Map<String, dynamic>>? any;
  /// Defines tools. The model automatically decides whether to call a tool or to generate text instead. This block has no fields.
  final pulumi.Input<Map<String, dynamic>>? auto;
  /// Defines a specific tool that the model must request. No text is generated but the results of tool use are sent back to the model to help generate a response. See Named Tool for more information.
  final pulumi.Input<AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolChoiceTool>? tool;

  /// Creates a new [AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolChoice].
  /// [any] Defines tools, at least one of which must be requested by the model. No text is generated but the results of tool use are sent back to the model to help generate a response. This block has no fields.
  /// [auto] Defines tools. The model automatically decides whether to call a tool or to generate text instead. This block has no fields.
  /// [tool] Defines a specific tool that the model must request. No text is generated but the results of tool use are sent back to the model to help generate a response. See Named Tool for more information.
  const AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolChoice({
    this.any,
    this.auto,
    this.tool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'any': ?any,
      'auto': ?auto,
      'tool': ?pulumi.Input.mapOptionalInputValue<AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolChoiceTool, Map<String, dynamic>>(tool, (value) => value.toMap()),
    };
  }

  factory AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolChoice.fromMap(Map<String, dynamic> map) {
    return AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolChoice(
      any: (() { final guardedValue = map['any']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      auto: (() { final guardedValue = map['auto']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      tool: (() { final guardedValue = map['tool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolChoiceTool.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
