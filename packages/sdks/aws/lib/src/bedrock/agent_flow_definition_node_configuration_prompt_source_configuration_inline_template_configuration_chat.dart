// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_flow_definition_node_configuration_prompt_source_configuration_inline_template_configuration_chat_input_variable.dart';
import 'agent_flow_definition_node_configuration_prompt_source_configuration_inline_template_configuration_chat_message.dart';
import 'agent_flow_definition_node_configuration_prompt_source_configuration_inline_template_configuration_chat_system.dart';
import 'agent_flow_definition_node_configuration_prompt_source_configuration_inline_template_configuration_chat_tool_configuration.dart';

class AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChat {
  /// Variables in the prompt template. See `definition.node.configuration.prompt.source_configuration.inline.template_configuration.text.input_variable` Block for details.
  final pulumi.Input<List<AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatInputVariable>?>? inputVariables;
  /// Messages in the chat for the prompt. See `definition.node.configuration.prompt.source_configuration.inline.template_configuration.chat.message` Block for details.
  final pulumi.Input<List<AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatMessage>> messages;
  /// System prompts that provide context to the model or describe how it should behave. See `definition.node.configuration.prompt.source_configuration.inline.template_configuration.chat.system` Block for details.
  final pulumi.Input<List<AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatSystem>?>? systems;
  /// Configuration information for the tools that the model can use when generating a response. See `definition.node.configuration.prompt.source_configuration.inline.template_configuration.chat.tool_configuration` Block for details.
  final pulumi.Input<AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfiguration?>? toolConfiguration;

  /// Creates a new [AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChat].
  /// [inputVariables] Variables in the prompt template. See `definition.node.configuration.prompt.source_configuration.inline.template_configuration.text.input_variable` Block for details.
  /// [messages] Messages in the chat for the prompt. See `definition.node.configuration.prompt.source_configuration.inline.template_configuration.chat.message` Block for details.
  /// [systems] System prompts that provide context to the model or describe how it should behave. See `definition.node.configuration.prompt.source_configuration.inline.template_configuration.chat.system` Block for details.
  /// [toolConfiguration] Configuration information for the tools that the model can use when generating a response. See `definition.node.configuration.prompt.source_configuration.inline.template_configuration.chat.tool_configuration` Block for details.
  const AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChat({
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
      inputVariables: (() { final guardedValue = map['inputVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatInputVariable>(guardedValue, (value) => AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatInputVariable.fromMap((value as Map).cast<String, dynamic>()))); })(),
      messages: pulumi.Input.fromValue(pulumi.Input.decodeList<AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatMessage>(map['messages']!, (value) => AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatMessage.fromMap((value as Map).cast<String, dynamic>()))),
      systems: (() { final guardedValue = map['systems']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatSystem>(guardedValue, (value) => AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatSystem.fromMap((value as Map).cast<String, dynamic>()))); })(),
      toolConfiguration: (() { final guardedValue = map['toolConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
