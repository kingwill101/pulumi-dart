// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_flow_definition_node_configuration_prompt_source_configuration_inline_template_configuration_chat_input_variable.dart';
import 'agent_flow_definition_node_configuration_prompt_source_configuration_inline_template_configuration_chat_message.dart';
import 'agent_flow_definition_node_configuration_prompt_source_configuration_inline_template_configuration_chat_system.dart';
import 'agent_flow_definition_node_configuration_prompt_source_configuration_inline_template_configuration_chat_tool_configuration.dart';

class AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChat {
  final List<
          AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatInputVariable>?
      inputVariables;

  /// A list of messages in the chat for the prompt. See Message for more information.
  final List<
          AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatMessage>
      messages;

  /// A list of system prompts to provide context to the model or to describe how it should behave. See System for more information.
  final List<
          AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatSystem>?
      systems;

  /// Configuration information for the tools that the model can use when generating a response. See Tool Configuration for more information.
  final AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfiguration?
      toolConfiguration;

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
    final map = <String, dynamic>{};
    final inputVariablesValue = inputVariables;
    if (inputVariablesValue != null) {
      map['inputVariables'] = pulumi.Input.encodeList<
          AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatInputVariable,
          Map<String, dynamic>>(inputVariablesValue, (value) => value.toMap());
    }
    map['messages'] = pulumi.Input.encodeList<
        AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatMessage,
        Map<String, dynamic>>(messages, (value) => value.toMap());
    final systemsValue = systems;
    if (systemsValue != null) {
      map['systems'] = pulumi.Input.encodeList<
          AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatSystem,
          Map<String, dynamic>>(systemsValue, (value) => value.toMap());
    }
    final toolConfigurationValue = toolConfiguration;
    if (toolConfigurationValue != null) {
      map['toolConfiguration'] = toolConfigurationValue.toMap();
    }
    return map;
  }

  factory AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChat.fromMap(
      Map<String, dynamic> map) {
    return AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChat(
      inputVariables: map['inputVariables'] == null
          ? null
          : pulumi.Input.decodeList<
                  AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatInputVariable>(
              map['inputVariables'],
              (value) =>
                  AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatInputVariable
                      .fromMap((value as Map).cast<String, dynamic>())),
      messages: pulumi.Input.decodeList<
              AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatMessage>(
          map['messages'],
          (value) =>
              AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatMessage
                  .fromMap((value as Map).cast<String, dynamic>())),
      systems: map['systems'] == null
          ? null
          : pulumi.Input.decodeList<
                  AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatSystem>(
              map['systems'],
              (value) =>
                  AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatSystem
                      .fromMap((value as Map).cast<String, dynamic>())),
      toolConfiguration: map['toolConfiguration'] == null
          ? null
          : AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfiguration
              .fromMap(
                  (map['toolConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}
