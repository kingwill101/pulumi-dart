// ignore_for_file: unused_element, unnecessary_cast

import '../agent_prompt_variant_template_configuration_chat_message_content_cache_point/agent_prompt_variant_template_configuration_chat_message_content_cache_point.dart';

class AgentPromptVariantTemplateConfigurationChatMessageContent {
  final AgentPromptVariantTemplateConfigurationChatMessageContentCachePoint?
      cachePoint;
  final String? text;

  AgentPromptVariantTemplateConfigurationChatMessageContent({
    this.cachePoint,
    this.text,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cachePointValue = cachePoint;
    if (cachePointValue != null) {
      map['cachePoint'] = cachePointValue.toMap();
    }
    final textValue = text;
    if (textValue != null) {
      map['text'] = textValue;
    }
    return map;
  }

  factory AgentPromptVariantTemplateConfigurationChatMessageContent.fromMap(
      Map<String, dynamic> map) {
    return AgentPromptVariantTemplateConfigurationChatMessageContent(
      cachePoint: map['cachePoint'] == null
          ? null
          : AgentPromptVariantTemplateConfigurationChatMessageContentCachePoint
              .fromMap((map['cachePoint'] as Map).cast<String, dynamic>()),
      text: map['text'] == null ? null : map['text'] as String,
    );
  }
}
