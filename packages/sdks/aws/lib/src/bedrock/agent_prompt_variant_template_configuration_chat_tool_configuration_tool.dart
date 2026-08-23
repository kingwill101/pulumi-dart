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
  const AgentPromptVariantTemplateConfigurationChatToolConfigurationTool({
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
      cachePoint: (() { final guardedValue = map['cachePoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentPromptVariantTemplateConfigurationChatToolConfigurationToolCachePoint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      toolSpec: (() { final guardedValue = map['toolSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentPromptVariantTemplateConfigurationChatToolConfigurationToolToolSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
