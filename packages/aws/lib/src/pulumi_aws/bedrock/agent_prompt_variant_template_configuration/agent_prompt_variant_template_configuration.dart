// ignore_for_file: unused_element, unnecessary_cast

import '../agent_prompt_variant_template_configuration_chat/agent_prompt_variant_template_configuration_chat.dart';
import '../agent_prompt_variant_template_configuration_text/agent_prompt_variant_template_configuration_text.dart';

class AgentPromptVariantTemplateConfiguration {
  /// Contains configurations to use the prompt in a conversational format. See Chat Template Configuration for more information.
  final AgentPromptVariantTemplateConfigurationChat? chat;

  /// Contains configurations for the text in a message for a prompt. See Text Template Configuration
  final AgentPromptVariantTemplateConfigurationText? text;

  AgentPromptVariantTemplateConfiguration({
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

  factory AgentPromptVariantTemplateConfiguration.fromMap(
      Map<String, dynamic> map) {
    return AgentPromptVariantTemplateConfiguration(
      chat: map['chat'] == null
          ? null
          : AgentPromptVariantTemplateConfigurationChat.fromMap(
              (map['chat'] as Map).cast<String, dynamic>()),
      text: map['text'] == null
          ? null
          : AgentPromptVariantTemplateConfigurationText.fromMap(
              (map['text'] as Map).cast<String, dynamic>()),
    );
  }
}
