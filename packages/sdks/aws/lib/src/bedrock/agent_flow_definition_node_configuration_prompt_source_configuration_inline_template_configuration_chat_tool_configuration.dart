// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_flow_definition_node_configuration_prompt_source_configuration_inline_template_configuration_chat_tool_configuration_tool.dart';
import 'agent_flow_definition_node_configuration_prompt_source_configuration_inline_template_configuration_chat_tool_configuration_tool_choice.dart';

class AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfiguration {
  /// Which tools the model should request when invoked. See `definition.node.configuration.prompt.source_configuration.inline.template_configuration.chat.tool_configuration.tool_choice` Block for details.
  final pulumi.Input<AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolChoice?>? toolChoice;
  /// Specific tool that the model must request. No text is generated but the results of tool use are sent back to the model to help generate a response. See `definition.node.configuration.prompt.source_configuration.inline.template_configuration.chat.tool_configuration.tool_choice.tool` Block for details.
  final pulumi.Input<List<AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationTool>?>? tools;

  /// Creates a new [AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfiguration].
  /// [toolChoice] Which tools the model should request when invoked. See `definition.node.configuration.prompt.source_configuration.inline.template_configuration.chat.tool_configuration.tool_choice` Block for details.
  /// [tools] Specific tool that the model must request. No text is generated but the results of tool use are sent back to the model to help generate a response. See `definition.node.configuration.prompt.source_configuration.inline.template_configuration.chat.tool_configuration.tool_choice.tool` Block for details.
  const AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfiguration({
    this.toolChoice,
    this.tools,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'toolChoice': ?pulumi.Input.mapOptionalInputValue<AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolChoice, Map<String, dynamic>>(toolChoice, (value) => value.toMap()),
      'tools': ?pulumi.Input.mapOptionalInputValue<List<AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationTool>, List<Map<String, dynamic>>>(tools, (value) => pulumi.Input.encodeList<AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationTool, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfiguration(
      toolChoice: (() { final guardedValue = map['toolChoice']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolChoice.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tools: (() { final guardedValue = map['tools']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationTool>(guardedValue, (value) => AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationTool.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
