// ignore_for_file: unused_element, unnecessary_cast

import 'agent_prompt_variant_template_configuration_chat_tool_configuration_tool_choice_tool.dart';

class AgentPromptVariantTemplateConfigurationChatToolConfigurationToolChoice {
  /// Defines tools, at least one of which must be requested by the model. No text is generated but the results of tool use are sent back to the model to help generate a response. This object has no fields.
  final Map<String, dynamic>? any;
  /// Defines tools. The model automatically decides whether to call a tool or to generate text instead. This object has no fields.
  final Map<String, dynamic>? auto;
  /// Defines a specific tool that the model must request. No text is generated but the results of tool use are sent back to the model to help generate a response. See Named Tool for more information.
  final AgentPromptVariantTemplateConfigurationChatToolConfigurationToolChoiceTool? tool;

  /// Creates a new [AgentPromptVariantTemplateConfigurationChatToolConfigurationToolChoice].
  /// [any] Defines tools, at least one of which must be requested by the model. No text is generated but the results of tool use are sent back to the model to help generate a response. This object has no fields.
  /// [auto] Defines tools. The model automatically decides whether to call a tool or to generate text instead. This object has no fields.
  /// [tool] Defines a specific tool that the model must request. No text is generated but the results of tool use are sent back to the model to help generate a response. See Named Tool for more information.
  AgentPromptVariantTemplateConfigurationChatToolConfigurationToolChoice({
    this.any,
    this.auto,
    this.tool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'any': ?any,
      'auto': ?auto,
      'tool': ?tool == null ? null : tool!.toMap(),
    };
  }

  factory AgentPromptVariantTemplateConfigurationChatToolConfigurationToolChoice.fromMap(Map<String, dynamic> map) {
    return AgentPromptVariantTemplateConfigurationChatToolConfigurationToolChoice(
      any: map['any'] == null ? null : (map['any'] as Map).cast<String, dynamic>(),
      auto: map['auto'] == null ? null : (map['auto'] as Map).cast<String, dynamic>(),
      tool: map['tool'] == null ? null : AgentPromptVariantTemplateConfigurationChatToolConfigurationToolChoiceTool.fromMap((map['tool'] as Map).cast<String, dynamic>()),
    );
  }
}

