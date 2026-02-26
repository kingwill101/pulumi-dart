// ignore_for_file: unused_element, unnecessary_cast

import '../agent_prompt_variant_template_configuration_chat_system_cache_point/agent_prompt_variant_template_configuration_chat_system_cache_point.dart';

class AgentPromptVariantTemplateConfigurationChatSystem {
  /// Creates a cache checkpoint within a tool designation. See Cache Point for more information.
  final AgentPromptVariantTemplateConfigurationChatSystemCachePoint? cachePoint;

  /// The text in the system prompt.
  final String? text;

  AgentPromptVariantTemplateConfigurationChatSystem({
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

  factory AgentPromptVariantTemplateConfigurationChatSystem.fromMap(
      Map<String, dynamic> map) {
    return AgentPromptVariantTemplateConfigurationChatSystem(
      cachePoint: map['cachePoint'] == null
          ? null
          : AgentPromptVariantTemplateConfigurationChatSystemCachePoint.fromMap(
              (map['cachePoint'] as Map).cast<String, dynamic>()),
      text: map['text'] == null ? null : map['text'] as String,
    );
  }
}
