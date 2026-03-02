// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_prompt_variant_template_configuration_chat_tool_configuration_tool_cache_point.dart';
import 'agent_prompt_variant_template_configuration_chat_tool_configuration_tool_tool_spec.dart';

class AgentPromptVariantTemplateConfigurationChatToolConfigurationTool {
  /// Creates a cache checkpoint within a tool designation. See Cache Point for more information.
  final pulumi.Input<AgentPromptVariantTemplateConfigurationChatToolConfigurationToolCachePoint>? cachePoint;
  /// The specification for the tool. See Tool Specification for more information.
  final pulumi.Input<AgentPromptVariantTemplateConfigurationChatToolConfigurationToolToolSpec>? toolSpec;

  /// Creates a new [AgentPromptVariantTemplateConfigurationChatToolConfigurationTool].
  /// [cachePoint] Creates a cache checkpoint within a tool designation. See Cache Point for more information.
  /// [toolSpec] The specification for the tool. See Tool Specification for more information.
  AgentPromptVariantTemplateConfigurationChatToolConfigurationTool({
    this.cachePoint,
    this.toolSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cachePoint': ?pulumi.Input.mapOptionalInputValue<AgentPromptVariantTemplateConfigurationChatToolConfigurationToolCachePoint, Map<String, dynamic>>(cachePoint, (value) => value.toMap()),
      'toolSpec': ?pulumi.Input.mapOptionalInputValue<AgentPromptVariantTemplateConfigurationChatToolConfigurationToolToolSpec, Map<String, dynamic>>(toolSpec, (value) => value.toMap()),
    };
  }

  factory AgentPromptVariantTemplateConfigurationChatToolConfigurationTool.fromMap(Map<String, dynamic> map) {
    return AgentPromptVariantTemplateConfigurationChatToolConfigurationTool(
      cachePoint: map['cachePoint'] == null ? null : ((AgentPromptVariantTemplateConfigurationChatToolConfigurationToolCachePoint.fromMap((map['cachePoint']! as Map).cast<String, dynamic>())).input()).input(),
      toolSpec: map['toolSpec'] == null ? null : ((AgentPromptVariantTemplateConfigurationChatToolConfigurationToolToolSpec.fromMap((map['toolSpec']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

