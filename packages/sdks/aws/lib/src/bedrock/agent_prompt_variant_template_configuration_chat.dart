// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_prompt_variant_template_configuration_chat_input_variable.dart';
import 'agent_prompt_variant_template_configuration_chat_message.dart';
import 'agent_prompt_variant_template_configuration_chat_system.dart';
import 'agent_prompt_variant_template_configuration_chat_tool_configuration.dart';

class AgentPromptVariantTemplateConfigurationChat {
  final pulumi.Input<List<AgentPromptVariantTemplateConfigurationChatInputVariable>>? inputVariables;
  /// A list of messages in the chat for the prompt. See Message for more information.
  final pulumi.Input<List<AgentPromptVariantTemplateConfigurationChatMessage>> messages;
  /// A list of system prompts to provide context to the model or to describe how it should behave. See System for more information.
  final pulumi.Input<List<AgentPromptVariantTemplateConfigurationChatSystem>>? systems;
  /// Configuration information for the tools that the model can use when generating a response. See Tool Configuration for more information.
  final pulumi.Input<AgentPromptVariantTemplateConfigurationChatToolConfiguration>? toolConfiguration;

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
    return <String, dynamic>{
      'inputVariables': ?pulumi.Input.mapOptionalInputValue<List<AgentPromptVariantTemplateConfigurationChatInputVariable>, List<Map<String, dynamic>>>(inputVariables, (value) => pulumi.Input.encodeList<AgentPromptVariantTemplateConfigurationChatInputVariable, Map<String, dynamic>>(value, (value) => value.toMap())),
      'messages': pulumi.Input.mapInputValue<List<AgentPromptVariantTemplateConfigurationChatMessage>, List<Map<String, dynamic>>>(messages, (value) => pulumi.Input.encodeList<AgentPromptVariantTemplateConfigurationChatMessage, Map<String, dynamic>>(value, (value) => value.toMap())),
      'systems': ?pulumi.Input.mapOptionalInputValue<List<AgentPromptVariantTemplateConfigurationChatSystem>, List<Map<String, dynamic>>>(systems, (value) => pulumi.Input.encodeList<AgentPromptVariantTemplateConfigurationChatSystem, Map<String, dynamic>>(value, (value) => value.toMap())),
      'toolConfiguration': ?pulumi.Input.mapOptionalInputValue<AgentPromptVariantTemplateConfigurationChatToolConfiguration, Map<String, dynamic>>(toolConfiguration, (value) => value.toMap()),
    };
  }

  factory AgentPromptVariantTemplateConfigurationChat.fromMap(Map<String, dynamic> map) {
    return AgentPromptVariantTemplateConfigurationChat(
      inputVariables: (() { final guardedValue = map['inputVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentPromptVariantTemplateConfigurationChatInputVariable>(guardedValue, (value) => AgentPromptVariantTemplateConfigurationChatInputVariable.fromMap((value as Map).cast<String, dynamic>()))); })(),
      messages: pulumi.Input.fromValue(pulumi.Input.decodeList<AgentPromptVariantTemplateConfigurationChatMessage>(map['messages']!, (value) => AgentPromptVariantTemplateConfigurationChatMessage.fromMap((value as Map).cast<String, dynamic>()))),
      systems: (() { final guardedValue = map['systems']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentPromptVariantTemplateConfigurationChatSystem>(guardedValue, (value) => AgentPromptVariantTemplateConfigurationChatSystem.fromMap((value as Map).cast<String, dynamic>()))); })(),
      toolConfiguration: (() { final guardedValue = map['toolConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentPromptVariantTemplateConfigurationChatToolConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

