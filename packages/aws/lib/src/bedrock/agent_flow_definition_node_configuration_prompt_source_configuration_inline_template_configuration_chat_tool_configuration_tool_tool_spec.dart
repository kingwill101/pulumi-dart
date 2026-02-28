// ignore_for_file: unused_element, unnecessary_cast

import 'agent_flow_definition_node_configuration_prompt_source_configuration_inline_template_configuration_chat_tool_configuration_tool_tool_spec_input_schema.dart';

class AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolToolSpec {
  /// A description for the flow.
  final String? description;

  /// The input schema of the tool. See Tool Input Schema for more information.
  final AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolToolSpecInputSchema?
      inputSchema;

  /// A name for the flow.
  final String name;

  /// Creates a new [AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolToolSpec].
  /// [description] A description for the flow.
  /// [inputSchema] The input schema of the tool. See Tool Input Schema for more information.
  /// [name] A name for the flow.
  AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolToolSpec({
    this.description,
    this.inputSchema,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final inputSchemaValue = inputSchema;
    if (inputSchemaValue != null) {
      map['inputSchema'] = inputSchemaValue.toMap();
    }
    map['name'] = name;
    return map;
  }

  factory AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolToolSpec.fromMap(
      Map<String, dynamic> map) {
    return AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolToolSpec(
      description:
          map['description'] == null ? null : map['description'] as String,
      inputSchema: map['inputSchema'] == null
          ? null
          : AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolToolSpecInputSchema
              .fromMap((map['inputSchema'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
    );
  }
}
