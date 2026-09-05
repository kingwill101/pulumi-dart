// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_prompt_variant_template_configuration_chat_tool_configuration_tool_choice_tool.dart';

class AgentPromptVariantTemplateConfigurationChatToolConfigurationToolChoice {
  /// Defines tools, at least one of which must be requested by the model. No text is generated but the results of tool use are sent back to the model to help generate a response. This object has no fields.
  final pulumi.Input<Map<String, dynamic>?>? any;
  /// Defines tools. The model automatically decides whether to call a tool or to generate text instead. This object has no fields.
  final pulumi.Input<Map<String, dynamic>?>? auto;
  /// Defines a specific tool that the model must request. No text is generated but the results of tool use are sent back to the model to help generate a response. See Named Tool for more information.
  final pulumi.Input<AgentPromptVariantTemplateConfigurationChatToolConfigurationToolChoiceTool?>? tool;

  /// Creates a new [AgentPromptVariantTemplateConfigurationChatToolConfigurationToolChoice].
  /// [any] Defines tools, at least one of which must be requested by the model. No text is generated but the results of tool use are sent back to the model to help generate a response. This object has no fields.
  /// [auto] Defines tools. The model automatically decides whether to call a tool or to generate text instead. This object has no fields.
  /// [tool] Defines a specific tool that the model must request. No text is generated but the results of tool use are sent back to the model to help generate a response. See Named Tool for more information.
  const AgentPromptVariantTemplateConfigurationChatToolConfigurationToolChoice({
    this.any,
    this.auto,
    this.tool,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'any': ?any,
      'auto': ?auto,
      'tool': ?pulumi.Input.mapOptionalInputValue<AgentPromptVariantTemplateConfigurationChatToolConfigurationToolChoiceTool, Map<String, dynamic>>(tool, (value) => value.toMap()),
    };
  }

  factory AgentPromptVariantTemplateConfigurationChatToolConfigurationToolChoice.fromMap(Map<String, dynamic> map) {
    return AgentPromptVariantTemplateConfigurationChatToolConfigurationToolChoice(
      any: (() { final guardedValue = map['any']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      auto: (() { final guardedValue = map['auto']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, dynamic>()); })(),
      tool: (() { final guardedValue = map['tool']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentPromptVariantTemplateConfigurationChatToolConfigurationToolChoiceTool.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
