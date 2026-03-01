// ignore_for_file: unused_element, unnecessary_cast

import 'agent_prompt_variant_template_configuration_chat.dart';
import 'agent_prompt_variant_template_configuration_text.dart';

class AgentPromptVariantTemplateConfiguration {
  /// Contains configurations to use the prompt in a conversational format. See Chat Template Configuration for more information.
  final AgentPromptVariantTemplateConfigurationChat? chat;
  /// Contains configurations for the text in a message for a prompt. See Text Template Configuration
  final AgentPromptVariantTemplateConfigurationText? text;

  /// Creates a new [AgentPromptVariantTemplateConfiguration].
  /// [chat] Contains configurations to use the prompt in a conversational format. See Chat Template Configuration for more information.
  /// [text] Contains configurations for the text in a message for a prompt. See Text Template Configuration
  AgentPromptVariantTemplateConfiguration({
    this.chat,
    this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chat': ?chat == null ? null : chat!.toMap(),
      'text': ?text == null ? null : text!.toMap(),
    };
  }

  factory AgentPromptVariantTemplateConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentPromptVariantTemplateConfiguration(
      chat: map['chat'] == null ? null : AgentPromptVariantTemplateConfigurationChat.fromMap((map['chat'] as Map).cast<String, dynamic>()),
      text: map['text'] == null ? null : AgentPromptVariantTemplateConfigurationText.fromMap((map['text'] as Map).cast<String, dynamic>()),
    );
  }
}

