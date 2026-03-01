// ignore_for_file: unused_element, unnecessary_cast

import 'agent_flow_definition_node_configuration_prompt_source_configuration_inline_template_configuration_chat_message_content_cache_point.dart';

class AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatMessageContent {
  final AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatMessageContentCachePoint?
  cachePoint;
  final String? text;

  /// Creates a new [AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatMessageContent].
  /// [cachePoint] Optional.
  /// [text] Optional.
  AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatMessageContent({
    this.cachePoint,
    this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cachePoint': ?cachePoint == null ? null : cachePoint!.toMap(),
      'text': ?text,
    };
  }

  factory AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatMessageContent.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatMessageContent(
      cachePoint: map['cachePoint'] == null
          ? null
          : AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatMessageContentCachePoint.fromMap(
              (map['cachePoint'] as Map).cast<String, dynamic>(),
            ),
      text: map['text'] == null ? null : map['text'] as String,
    );
  }
}
