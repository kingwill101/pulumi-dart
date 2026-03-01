// ignore_for_file: unused_element, unnecessary_cast

import 'agent_prompt_variant_template_configuration_chat_tool_configuration_tool_cache_point.dart';
import 'agent_prompt_variant_template_configuration_chat_tool_configuration_tool_tool_spec.dart';

class AgentPromptVariantTemplateConfigurationChatToolConfigurationTool {
  /// Creates a cache checkpoint within a tool designation. See Cache Point for more information.
  final AgentPromptVariantTemplateConfigurationChatToolConfigurationToolCachePoint? cachePoint;
  /// The specification for the tool. See Tool Specification for more information.
  final AgentPromptVariantTemplateConfigurationChatToolConfigurationToolToolSpec? toolSpec;

  /// Creates a new [AgentPromptVariantTemplateConfigurationChatToolConfigurationTool].
  /// [cachePoint] Creates a cache checkpoint within a tool designation. See Cache Point for more information.
  /// [toolSpec] The specification for the tool. See Tool Specification for more information.
  AgentPromptVariantTemplateConfigurationChatToolConfigurationTool({
    this.cachePoint,
    this.toolSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cachePoint': ?cachePoint == null ? null : cachePoint!.toMap(),
      'toolSpec': ?toolSpec == null ? null : toolSpec!.toMap(),
    };
  }

  factory AgentPromptVariantTemplateConfigurationChatToolConfigurationTool.fromMap(Map<String, dynamic> map) {
    return AgentPromptVariantTemplateConfigurationChatToolConfigurationTool(
      cachePoint: map['cachePoint'] == null ? null : AgentPromptVariantTemplateConfigurationChatToolConfigurationToolCachePoint.fromMap((map['cachePoint'] as Map).cast<String, dynamic>()),
      toolSpec: map['toolSpec'] == null ? null : AgentPromptVariantTemplateConfigurationChatToolConfigurationToolToolSpec.fromMap((map['toolSpec'] as Map).cast<String, dynamic>()),
    );
  }
}

