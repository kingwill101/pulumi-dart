// ignore_for_file: unused_element, unnecessary_cast

import 'agent_flow_definition_node_configuration_prompt_source_configuration_inline_template_configuration_chat.dart';
import 'agent_flow_definition_node_configuration_prompt_source_configuration_inline_template_configuration_text.dart';

class AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfiguration {
  /// Contains configurations to use the prompt in a conversational format. See Chat Template Configuration for more information.
  final AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChat?
      chat;
  final AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationText?
      text;

  /// Creates a new [AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfiguration].
  /// [chat] Contains configurations to use the prompt in a conversational format. See Chat Template Configuration for more information.
  /// [text] Optional.
  AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfiguration({
    this.chat,
    this.text,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final chatValue = chat;
    if (chatValue != null) {
      map['chat'] = chatValue.toMap();
    }
    final textValue = text;
    if (textValue != null) {
      map['text'] = textValue.toMap();
    }
    return map;
  }

  factory AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfiguration(
      chat: map['chat'] == null
          ? null
          : AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChat
              .fromMap((map['chat'] as Map).cast<String, dynamic>()),
      text: map['text'] == null
          ? null
          : AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationText
              .fromMap((map['text'] as Map).cast<String, dynamic>()),
    );
  }
}
