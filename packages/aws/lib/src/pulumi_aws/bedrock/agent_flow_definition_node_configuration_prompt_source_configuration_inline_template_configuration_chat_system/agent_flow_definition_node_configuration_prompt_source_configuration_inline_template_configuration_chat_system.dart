// ignore_for_file: unused_element, unnecessary_cast

import '../agent_flow_definition_node_configuration_prompt_source_configuration_inline_template_configuration_chat_system_cache_point/agent_flow_definition_node_configuration_prompt_source_configuration_inline_template_configuration_chat_system_cache_point.dart';

class AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatSystem {
  /// Creates a cache checkpoint within a tool designation. See Cache Point for more information.
  final AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatSystemCachePoint?
      cachePoint;

  /// The text in the system prompt.
  final String? text;

  AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatSystem({
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

  factory AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatSystem.fromMap(
      Map<String, dynamic> map) {
    return AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatSystem(
      cachePoint: map['cachePoint'] == null
          ? null
          : AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatSystemCachePoint
              .fromMap((map['cachePoint'] as Map).cast<String, dynamic>()),
      text: map['text'] == null ? null : map['text'] as String,
    );
  }
}
