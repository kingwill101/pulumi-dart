// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../agent_flow_definition_node_configuration_prompt_source_configuration_inline_template_configuration_chat_tool_configuration_tool/agent_flow_definition_node_configuration_prompt_source_configuration_inline_template_configuration_chat_tool_configuration_tool.dart';
import '../agent_flow_definition_node_configuration_prompt_source_configuration_inline_template_configuration_chat_tool_configuration_tool_choice/agent_flow_definition_node_configuration_prompt_source_configuration_inline_template_configuration_chat_tool_configuration_tool_choice.dart';

class AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfiguration {
  /// Defines which tools the model should request when invoked. See Tool Choice for more information.
  final AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolChoice?
      toolChoice;

  /// A list of tools to pass to a model. See Tool for more information.
  final List<
          AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationTool>?
      tools;

  AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfiguration({
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
          AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationTool,
          Map<String, dynamic>>(toolsValue, (value) => value.toMap());
    }
    return map;
  }

  factory AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfiguration(
      toolChoice: map['toolChoice'] == null
          ? null
          : AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolChoice
              .fromMap((map['toolChoice'] as Map).cast<String, dynamic>()),
      tools: map['tools'] == null
          ? null
          : pulumi.Input.decodeList<
                  AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationTool>(
              map['tools'],
              (value) =>
                  AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationTool
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
