// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_prompt_variant_template_configuration_chat_tool_configuration_tool.dart';
import 'agent_prompt_variant_template_configuration_chat_tool_configuration_tool_choice.dart';

class AgentPromptVariantTemplateConfigurationChatToolConfiguration {
  /// Defines which tools the model should request when invoked. See Tool Choice for more information.
  final AgentPromptVariantTemplateConfigurationChatToolConfigurationToolChoice?
      toolChoice;

  /// A list of tools to pass to a model. See Tool for more information.
  final List<AgentPromptVariantTemplateConfigurationChatToolConfigurationTool>?
      tools;

  /// Creates a new [AgentPromptVariantTemplateConfigurationChatToolConfiguration].
  /// [toolChoice] Defines which tools the model should request when invoked. See Tool Choice for more information.
  /// [tools] A list of tools to pass to a model. See Tool for more information.
  AgentPromptVariantTemplateConfigurationChatToolConfiguration({
    this.toolChoice,
    this.tools,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final toolChoiceValue = toolChoice;
    if (toolChoiceValue != null) {
      map['toolChoice'] = toolChoiceValue.toMap();
    }
    final toolsValue = tools;
    if (toolsValue != null) {
      map['tools'] = pulumi.Input.encodeList<
          AgentPromptVariantTemplateConfigurationChatToolConfigurationTool,
          Map<String, dynamic>>(toolsValue, (value) => value.toMap());
    }
    return map;
  }

  factory AgentPromptVariantTemplateConfigurationChatToolConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentPromptVariantTemplateConfigurationChatToolConfiguration(
      toolChoice: map['toolChoice'] == null
          ? null
          : AgentPromptVariantTemplateConfigurationChatToolConfigurationToolChoice
              .fromMap((map['toolChoice'] as Map).cast<String, dynamic>()),
      tools: map['tools'] == null
          ? null
          : pulumi.Input.decodeList<
                  AgentPromptVariantTemplateConfigurationChatToolConfigurationTool>(
              map['tools'],
              (value) =>
                  AgentPromptVariantTemplateConfigurationChatToolConfigurationTool
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
