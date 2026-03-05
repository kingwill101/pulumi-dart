// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_prompt_variant_template_configuration_chat_message_content.dart';

class AgentPromptVariantTemplateConfigurationChatMessage {
  /// Contains the content for the message you pass to, or receive from a model. See [Message Content] for more information.
  final pulumi.Input<AgentPromptVariantTemplateConfigurationChatMessageContent>? content;
  /// The role that the message belongs to.
  final pulumi.Input<String> role;

  /// Creates a new [AgentPromptVariantTemplateConfigurationChatMessage].
  /// [content] Contains the content for the message you pass to, or receive from a model. See [Message Content] for more information.
  /// [role] The role that the message belongs to.
  AgentPromptVariantTemplateConfigurationChatMessage({
    this.content,
    required this.role,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?pulumi.Input.mapOptionalInputValue<AgentPromptVariantTemplateConfigurationChatMessageContent, Map<String, dynamic>>(content, (value) => value.toMap()),
      'role': role,
    };
  }

  factory AgentPromptVariantTemplateConfigurationChatMessage.fromMap(Map<String, dynamic> map) {
    return AgentPromptVariantTemplateConfigurationChatMessage(
      content: (() { final guardedValue = map['content']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentPromptVariantTemplateConfigurationChatMessageContent.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      role: pulumi.Input.fromValue(map['role'] as String),
    );
  }
}

