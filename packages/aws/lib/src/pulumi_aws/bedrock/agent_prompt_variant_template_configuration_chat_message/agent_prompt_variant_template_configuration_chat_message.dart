// ignore_for_file: unused_element, unnecessary_cast

import '../agent_prompt_variant_template_configuration_chat_message_content/agent_prompt_variant_template_configuration_chat_message_content.dart';

class AgentPromptVariantTemplateConfigurationChatMessage {
  /// Contains the content for the message you pass to, or receive from a model. See [Message Content] for more information.
  final AgentPromptVariantTemplateConfigurationChatMessageContent? content;

  /// The role that the message belongs to.
  final String role;

  AgentPromptVariantTemplateConfigurationChatMessage({
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

  factory AgentPromptVariantTemplateConfigurationChatMessage.fromMap(
      Map<String, dynamic> map) {
    return AgentPromptVariantTemplateConfigurationChatMessage(
      content: map['content'] == null
          ? null
          : AgentPromptVariantTemplateConfigurationChatMessageContent.fromMap(
              (map['content'] as Map).cast<String, dynamic>()),
      role: map['role'] as String,
    );
  }
}
