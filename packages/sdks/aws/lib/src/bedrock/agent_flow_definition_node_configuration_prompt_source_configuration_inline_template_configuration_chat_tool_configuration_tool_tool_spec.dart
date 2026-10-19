// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_flow_definition_node_configuration_prompt_source_configuration_inline_template_configuration_chat_tool_configuration_tool_tool_spec_input_schema.dart';

class AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolToolSpec {
  /// Description for the flow.
  final pulumi.Input<String?>? description;
  /// Input schema of the tool. See `definition.node.configuration.prompt.source_configuration.inline.template_configuration.chat.tool_configuration.tool.tool_spec.input_schema` Block for details.
  final pulumi.Input<AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolToolSpecInputSchema?>? inputSchema;
  /// Name for the flow.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> name;

  /// Creates a new [AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolToolSpec].
  /// [description] Description for the flow.
  /// [inputSchema] Input schema of the tool. See `definition.node.configuration.prompt.source_configuration.inline.template_configuration.chat.tool_configuration.tool.tool_spec.input_schema` Block for details.
  /// [name] Name for the flow.
  const AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolToolSpec({
    this.description,
    this.inputSchema,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'inputSchema': ?pulumi.Input.mapOptionalInputValue<AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolToolSpecInputSchema, Map<String, dynamic>>(inputSchema, (value) => value.toMap()),
      'name': name,
    };
  }

  factory AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolToolSpec.fromMap(Map<String, dynamic> map) {
    return AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolToolSpec(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inputSchema: (() { final guardedValue = map['inputSchema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentFlowDefinitionNodeConfigurationPromptSourceConfigurationInlineTemplateConfigurationChatToolConfigurationToolToolSpecInputSchema.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
