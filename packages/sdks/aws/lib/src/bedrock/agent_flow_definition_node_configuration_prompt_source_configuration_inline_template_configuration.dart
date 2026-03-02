// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_flow_definition_node_configuration_prompt_source_configuration_inline_template_configuration_chat.dart';
import 'agent_flow_definition_node_configuration_prompt_source_configuration_inline_template_configuration_text.dart';

class AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfiguration {
  /// Contains configurations to use the prompt in a conversational format. See Chat Template Configuration for more information.
  final pulumi.Input<AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChat>? chat;
  final pulumi.Input<AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationText>? text;

  /// Creates a new [AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfiguration].
  /// [chat] Contains configurations to use the prompt in a conversational format. See Chat Template Configuration for more information.
  /// [text] Optional.
  AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfiguration({
    this.chat,
    this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chat': ?pulumi.Input.mapOptionalInputValue<AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChat, Map<String, dynamic>>(chat, (value) => value.toMap()),
      'text': ?pulumi.Input.mapOptionalInputValue<AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationText, Map<String, dynamic>>(text, (value) => value.toMap()),
    };
  }

  factory AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfiguration(
      chat: map['chat'] == null ? null : (AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChat.fromMap((map['chat'] as Map).cast<String, dynamic>())).input(),
      text: map['text'] == null ? null : (AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationText.fromMap((map['text'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

