// ignore_for_file: unused_element, unnecessary_cast

import '../agent_flow_definition_node_configuration_prompt_source_configuration_inline_template_configuration_chat_tool_configuration_tool_cache_point/agent_flow_definition_node_configuration_prompt_source_configuration_inline_template_configuration_chat_tool_configuration_tool_cache_point.dart';
import '../agent_flow_definition_node_configuration_prompt_source_configuration_inline_template_configuration_chat_tool_configuration_tool_tool_spec/agent_flow_definition_node_configuration_prompt_source_configuration_inline_template_configuration_chat_tool_configuration_tool_tool_spec.dart';

class AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationTool {
  /// Creates a cache checkpoint within a tool designation. See Cache Point for more information.
  final AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolCachePoint?
      cachePoint;

  /// The specification for the tool. See Tool Specification for more information.
  final AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolToolSpec?
      toolSpec;

  AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationTool({
    this.cachePoint,
    this.toolSpec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cachePointValue = cachePoint;
    if (cachePointValue != null) {
      map['cachePoint'] = cachePointValue.toMap();
    }
    final toolSpecValue = toolSpec;
    if (toolSpecValue != null) {
      map['toolSpec'] = toolSpecValue.toMap();
    }
    return map;
  }

  factory AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationTool.fromMap(
      Map<String, dynamic> map) {
    return AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationTool(
      cachePoint: map['cachePoint'] == null
          ? null
          : AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolCachePoint
              .fromMap((map['cachePoint'] as Map).cast<String, dynamic>()),
      toolSpec: map['toolSpec'] == null
          ? null
          : AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolToolSpec
              .fromMap((map['toolSpec'] as Map).cast<String, dynamic>()),
    );
  }
}
