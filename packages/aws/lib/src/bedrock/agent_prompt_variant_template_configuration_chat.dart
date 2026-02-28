// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_prompt_variant_template_configuration_chat_input_variable.dart';
import 'agent_prompt_variant_template_configuration_chat_message.dart';
import 'agent_prompt_variant_template_configuration_chat_system.dart';
import 'agent_prompt_variant_template_configuration_chat_tool_configuration.dart';

class AgentPromptVariantTemplateConfigurationChat {
  final List<AgentPromptVariantTemplateConfigurationChatInputVariable>?
      inputVariables;

  /// A list of messages in the chat for the prompt. See Message for more information.
  final List<AgentPromptVariantTemplateConfigurationChatMessage> messages;

  /// A list of system prompts to provide context to the model or to describe how it should behave. See System for more information.
  final List<AgentPromptVariantTemplateConfigurationChatSystem>? systems;

  /// Configuration information for the tools that the model can use when generating a response. See Tool Configuration for more information.
  final AgentPromptVariantTemplateConfigurationChatToolConfiguration?
      toolConfiguration;

  /// Creates a new [AgentPromptVariantTemplateConfigurationChat].
  /// [inputVariables] Optional.
  /// [messages] A list of messages in the chat for the prompt. See Message for more information.
  /// [systems] A list of system prompts to provide context to the model or to describe how it should behave. See System for more information.
  /// [toolConfiguration] Configuration information for the tools that the model can use when generating a response. See Tool Configuration for more information.
  AgentPromptVariantTemplateConfigurationChat({
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
          AgentPromptVariantTemplateConfigurationChatInputVariable,
          Map<String, dynamic>>(inputVariablesValue, (value) => value.toMap());
    }
    map['messages'] = pulumi.Input.encodeList<
        AgentPromptVariantTemplateConfigurationChatMessage,
        Map<String, dynamic>>(messages, (value) => value.toMap());
    final systemsValue = systems;
    if (systemsValue != null) {
      map['systems'] = pulumi.Input.encodeList<
          AgentPromptVariantTemplateConfigurationChatSystem,
          Map<String, dynamic>>(systemsValue, (value) => value.toMap());
    }
    final toolConfigurationValue = toolConfiguration;
    if (toolConfigurationValue != null) {
      map['toolConfiguration'] = toolConfigurationValue.toMap();
    }
    return map;
  }

  factory AgentPromptVariantTemplateConfigurationChat.fromMap(
      Map<String, dynamic> map) {
    return AgentPromptVariantTemplateConfigurationChat(
      inputVariables: map['inputVariables'] == null
          ? null
          : pulumi.Input.decodeList<
                  AgentPromptVariantTemplateConfigurationChatInputVariable>(
              map['inputVariables'],
              (value) =>
                  AgentPromptVariantTemplateConfigurationChatInputVariable
                      .fromMap((value as Map).cast<String, dynamic>())),
      messages: pulumi.Input.decodeList<
              AgentPromptVariantTemplateConfigurationChatMessage>(
          map['messages'],
          (value) => AgentPromptVariantTemplateConfigurationChatMessage.fromMap(
              (value as Map).cast<String, dynamic>())),
      systems: map['systems'] == null
          ? null
          : pulumi.Input.decodeList<
                  AgentPromptVariantTemplateConfigurationChatSystem>(
              map['systems'],
              (value) =>
                  AgentPromptVariantTemplateConfigurationChatSystem.fromMap(
                      (value as Map).cast<String, dynamic>())),
      toolConfiguration: map['toolConfiguration'] == null
          ? null
          : AgentPromptVariantTemplateConfigurationChatToolConfiguration
              .fromMap(
                  (map['toolConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}
