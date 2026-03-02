// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_flow_definition_node_configuration_prompt_source_configuration_inline_template_configuration_chat_input_variable.dart';
import 'agent_flow_definition_node_configuration_prompt_source_configuration_inline_template_configuration_chat_message.dart';
import 'agent_flow_definition_node_configuration_prompt_source_configuration_inline_template_configuration_chat_system.dart';
import 'agent_flow_definition_node_configuration_prompt_source_configuration_inline_template_configuration_chat_tool_configuration.dart';

class AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChat {
  final pulumi.Input<List<AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatInputVariable>>? inputVariables;
  /// A list of messages in the chat for the prompt. See Message for more information.
  final pulumi.Input<List<AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatMessage>> messages;
  /// A list of system prompts to provide context to the model or to describe how it should behave. See System for more information.
  final pulumi.Input<List<AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatSystem>>? systems;
  /// Configuration information for the tools that the model can use when generating a response. See Tool Configuration for more information.
  final pulumi.Input<AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfiguration>? toolConfiguration;

  /// Creates a new [AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChat].
  /// [inputVariables] Optional.
  /// [messages] A list of messages in the chat for the prompt. See Message for more information.
  /// [systems] A list of system prompts to provide context to the model or to describe how it should behave. See System for more information.
  /// [toolConfiguration] Configuration information for the tools that the model can use when generating a response. See Tool Configuration for more information.
  AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChat({
    this.inputVariables,
    required this.messages,
    this.systems,
    this.toolConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'inputVariables': ?pulumi.Input.mapOptionalInputValue<List<AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatInputVariable>, List<Map<String, dynamic>>>(inputVariables, (value) => pulumi.Input.encodeList<AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatInputVariable, Map<String, dynamic>>(value, (value) => value.toMap())),
      'messages': pulumi.Input.mapInputValue<List<AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatMessage>, List<Map<String, dynamic>>>(messages, (value) => pulumi.Input.encodeList<AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatMessage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'systems': ?pulumi.Input.mapOptionalInputValue<List<AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatSystem>, List<Map<String, dynamic>>>(systems, (value) => pulumi.Input.encodeList<AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatSystem, Map<String, dynamic>>(value, (value) => value.toMap())),
      'toolConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfiguration, Map<String, dynamic>>(toolConfiguration, (value) => value.toMap()),
    };
  }

  factory AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChat.fromMap(Map<String, dynamic> map) {
    return AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChat(
      inputVariables: map['inputVariables'] == null ? null : (pulumi.Input.decodeList<AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatInputVariable>(map['inputVariables'], (value) => AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatInputVariable.fromMap((value as Map).cast<String, dynamic>()))).input(),
      messages: (pulumi.Input.decodeList<AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatMessage>(map['messages'], (value) => AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatMessage.fromMap((value as Map).cast<String, dynamic>()))).input(),
      systems: map['systems'] == null ? null : (pulumi.Input.decodeList<AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatSystem>(map['systems'], (value) => AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatSystem.fromMap((value as Map).cast<String, dynamic>()))).input(),
      toolConfiguration: map['toolConfiguration'] == null ? null : (AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfiguration.fromMap((map['toolConfiguration'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

