// ignore_for_file: unused_element, unnecessary_cast

import 'agent_prompt_variant_template_configuration_chat_tool_configuration_tool_tool_spec_input_schema.dart';

class AgentPromptVariantTemplateConfigurationChatToolConfigurationToolToolSpec {
  /// Description of the prompt.
  final String? description;

  /// The input schema of the tool. See Tool Input Schema for more information.
  final AgentPromptVariantTemplateConfigurationChatToolConfigurationToolToolSpecInputSchema?
      inputSchema;

  /// Name of the prompt.
  ///
  /// The following arguments are optional:
  final String name;

  /// Creates a new [AgentPromptVariantTemplateConfigurationChatToolConfigurationToolToolSpec].
  /// [description] Description of the prompt.
  /// [inputSchema] The input schema of the tool. See Tool Input Schema for more information.
  /// [name] Name of the prompt.
  AgentPromptVariantTemplateConfigurationChatToolConfigurationToolToolSpec({
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

  factory AgentPromptVariantTemplateConfigurationChatToolConfigurationToolToolSpec.fromMap(
      Map<String, dynamic> map) {
    return AgentPromptVariantTemplateConfigurationChatToolConfigurationToolToolSpec(
      description:
          map['description'] == null ? null : map['description'] as String,
      inputSchema: map['inputSchema'] == null
          ? null
          : AgentPromptVariantTemplateConfigurationChatToolConfigurationToolToolSpecInputSchema
              .fromMap((map['inputSchema'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
    );
  }
}
