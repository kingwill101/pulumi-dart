// ignore_for_file: unused_element, unnecessary_cast

import 'agent_prompt_variant_template_configuration_chat_message_content_cache_point.dart';

class AgentPromptVariantTemplateConfigurationChatMessageContent {
  final AgentPromptVariantTemplateConfigurationChatMessageContentCachePoint? cachePoint;
  final String? text;

  /// Creates a new [AgentPromptVariantTemplateConfigurationChatMessageContent].
  /// [cachePoint] Optional.
  /// [text] Optional.
  AgentPromptVariantTemplateConfigurationChatMessageContent({
    this.cachePoint,
    this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cachePoint': ?cachePoint == null ? null : cachePoint!.toMap(),
      'text': ?text,
    };
  }

  factory AgentPromptVariantTemplateConfigurationChatMessageContent.fromMap(Map<String, dynamic> map) {
    return AgentPromptVariantTemplateConfigurationChatMessageContent(
      cachePoint: map['cachePoint'] == null ? null : AgentPromptVariantTemplateConfigurationChatMessageContentCachePoint.fromMap((map['cachePoint'] as Map).cast<String, dynamic>()),
      text: map['text'] == null ? null : map['text'] as String,
    );
  }
}

