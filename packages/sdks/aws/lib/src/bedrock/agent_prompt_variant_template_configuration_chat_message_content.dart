// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_prompt_variant_template_configuration_chat_message_content_cache_point.dart';

class AgentPromptVariantTemplateConfigurationChatMessageContent {
  final pulumi.Input<AgentPromptVariantTemplateConfigurationChatMessageContentCachePoint>? cachePoint;
  final pulumi.Input<String>? text;

  /// Creates a new [AgentPromptVariantTemplateConfigurationChatMessageContent].
  /// [cachePoint] Optional.
  /// [text] Optional.
  const AgentPromptVariantTemplateConfigurationChatMessageContent({
    this.cachePoint,
    this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cachePoint': ?pulumi.Input.mapOptionalInputValue<AgentPromptVariantTemplateConfigurationChatMessageContentCachePoint, Map<String, dynamic>>(cachePoint, (value) => value.toMap()),
      'text': ?text,
    };
  }

  factory AgentPromptVariantTemplateConfigurationChatMessageContent.fromMap(Map<String, dynamic> map) {
    return AgentPromptVariantTemplateConfigurationChatMessageContent(
      cachePoint: (() { final guardedValue = map['cachePoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentPromptVariantTemplateConfigurationChatMessageContentCachePoint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      text: (() { final guardedValue = map['text']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

