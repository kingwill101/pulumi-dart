// ignore_for_file: unused_element, unnecessary_cast

import '../agent_flow_definition_node_configuration_prompt_source_configuration_inline_template_configuration_chat_message_content/agent_flow_definition_node_configuration_prompt_source_configuration_inline_template_configuration_chat_message_content.dart';

class AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatMessage {
  /// Contains the content for the message you pass to, or receive from a model. See [Message Content] for more information.
  final AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatMessageContent?
      content;

  /// The role that the message belongs to.
  final String role;

  AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatMessage({
    this.content,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final contentValue = content;
    if (contentValue != null) {
      map['content'] = contentValue.toMap();
    }
    map['role'] = role;
    return map;
  }

  factory AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatMessage.fromMap(
      Map<String, dynamic> map) {
    return AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatMessage(
      content: map['content'] == null
          ? null
          : AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatMessageContent
              .fromMap((map['content'] as Map).cast<String, dynamic>()),
      role: map['role'] as String,
    );
  }
}
