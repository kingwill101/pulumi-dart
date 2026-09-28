// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_prompt_variant_template_configuration_chat_tool_configuration_tool_tool_spec_input_schema.dart';

class AgentPromptVariantTemplateConfigurationChatToolConfigurationToolToolSpec {
  /// Description of the tool.
  final pulumi.Input<String?>? description;
  /// Input schema of the tool. See `inputSchema` Block for more information.
  final pulumi.Input<AgentPromptVariantTemplateConfigurationChatToolConfigurationToolToolSpecInputSchema?>? inputSchema;
  /// Name of the tool.
  final pulumi.Input<String> name;

  /// Creates a new [AgentPromptVariantTemplateConfigurationChatToolConfigurationToolToolSpec].
  /// [description] Description of the tool.
  /// [inputSchema] Input schema of the tool. See `inputSchema` Block for more information.
  /// [name] Name of the tool.
  const AgentPromptVariantTemplateConfigurationChatToolConfigurationToolToolSpec({
    this.description,
    this.inputSchema,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'inputSchema': ?pulumi.Input.mapOptionalInputValue<AgentPromptVariantTemplateConfigurationChatToolConfigurationToolToolSpecInputSchema, Map<String, dynamic>>(inputSchema, (value) => value.toMap()),
      'name': name,
    };
  }

  factory AgentPromptVariantTemplateConfigurationChatToolConfigurationToolToolSpec.fromMap(Map<String, dynamic> map) {
    return AgentPromptVariantTemplateConfigurationChatToolConfigurationToolToolSpec(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inputSchema: (() { final guardedValue = map['inputSchema']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AgentPromptVariantTemplateConfigurationChatToolConfigurationToolToolSpecInputSchema.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
    );
  }
}
