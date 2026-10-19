// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_flow_definition_node_configuration_prompt_source_configuration_inline_template_configuration_chat_tool_configuration_tool_cache_point.dart';
import 'agent_flow_definition_node_configuration_prompt_source_configuration_inline_template_configuration_chat_tool_configuration_tool_tool_spec.dart';

class AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationTool {
  /// Cache checkpoint within a template configuration. See `definition.node.configuration.prompt.source_configuration.inline.template_configuration.text.cache_point` Block for details.
  final pulumi.Input<AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolCachePoint?>? cachePoint;
  /// Specification for the tool. See `definition.node.configuration.prompt.source_configuration.inline.template_configuration.chat.tool_configuration.tool.tool_spec` Block for details.
  final pulumi.Input<AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolToolSpec?>? toolSpec;

  /// Creates a new [AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationTool].
  /// [cachePoint] Cache checkpoint within a template configuration. See `definition.node.configuration.prompt.source_configuration.inline.template_configuration.text.cache_point` Block for details.
  /// [toolSpec] Specification for the tool. See `definition.node.configuration.prompt.source_configuration.inline.template_configuration.chat.tool_configuration.tool.tool_spec` Block for details.
  const AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationTool({
    this.cachePoint,
    this.toolSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cachePoint': ?pulumi.Input.mapOptionalInputValue<AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolCachePoint, Map<String, dynamic>>(cachePoint, (value) => value.toMap()),
      'toolSpec': ?pulumi.Input.mapOptionalInputValue<AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolToolSpec, Map<String, dynamic>>(toolSpec, (value) => value.toMap()),
    };
  }

  factory AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationTool.fromMap(Map<String, dynamic> map) {
    return AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationTool(
      cachePoint: (() { final guardedValue = map['cachePoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolCachePoint.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      toolSpec: (() { final guardedValue = map['toolSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolToolSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
