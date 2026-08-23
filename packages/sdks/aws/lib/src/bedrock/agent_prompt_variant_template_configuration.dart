// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_prompt_variant_template_configuration_chat.dart';
import 'agent_prompt_variant_template_configuration_text.dart';

class AgentPromptVariantTemplateConfiguration {
  /// Contains configurations to use the prompt in a conversational format. See Chat Template Configuration for more information.
  final pulumi.Input<AgentPromptVariantTemplateConfigurationChat>? chat;
  /// Contains configurations for the text in a message for a prompt. See Text Template Configuration
  final pulumi.Input<AgentPromptVariantTemplateConfigurationText>? text;

  /// Creates a new [AgentPromptVariantTemplateConfiguration].
  /// [chat] Contains configurations to use the prompt in a conversational format. See Chat Template Configuration for more information.
  /// [text] Contains configurations for the text in a message for a prompt. See Text Template Configuration
  const AgentPromptVariantTemplateConfiguration({
    this.chat,
    this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'chat': ?pulumi.Input.mapOptionalInputValue<AgentPromptVariantTemplateConfigurationChat, Map<String, dynamic>>(chat, (value) => value.toMap()),
      'text': ?pulumi.Input.mapOptionalInputValue<AgentPromptVariantTemplateConfigurationText, Map<String, dynamic>>(text, (value) => value.toMap()),
    };
  }

  factory AgentPromptVariantTemplateConfiguration.fromMap(Map<String, dynamic> map) {
    return AgentPromptVariantTemplateConfiguration(
      chat: (() { final guardedValue = map['chat']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentPromptVariantTemplateConfigurationChat.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      text: (() { final guardedValue = map['text']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentPromptVariantTemplateConfigurationText.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
