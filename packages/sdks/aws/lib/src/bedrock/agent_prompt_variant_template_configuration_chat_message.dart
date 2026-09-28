// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_prompt_variant_template_configuration_chat_message_content.dart';

class AgentPromptVariantTemplateConfigurationChatMessage {
  /// Content for the message you pass to, or receive from a model. See `content` Block for more information.
  final pulumi.Input<AgentPromptVariantTemplateConfigurationChatMessageContent?>? content;
  /// Role that the message belongs to.
  final pulumi.Input<String> role;

  /// Creates a new [AgentPromptVariantTemplateConfigurationChatMessage].
  /// [content] Content for the message you pass to, or receive from a model. See `content` Block for more information.
  /// [role] Role that the message belongs to.
  const AgentPromptVariantTemplateConfigurationChatMessage({
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
