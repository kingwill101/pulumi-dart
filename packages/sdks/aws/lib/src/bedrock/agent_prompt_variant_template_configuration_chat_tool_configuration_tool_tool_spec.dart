// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'agent_prompt_variant_template_configuration_chat_tool_configuration_tool_tool_spec_input_schema.dart';

class AgentPromptVariantTemplateConfigurationChatToolConfigurationToolToolSpec {
  /// Description of the prompt.
  final pulumi.Input<String>? description;
  /// The input schema of the tool. See Tool Input Schema for more information.
  final pulumi.Input<AgentPromptVariantTemplateConfigurationChatToolConfigurationToolToolSpecInputSchema>? inputSchema;
  /// Name of the prompt.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> name;

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
    return <String, dynamic>{
      'description': ?description,
      'inputSchema': ?pulumi.Input.mapOptionalInputValue<AgentPromptVariantTemplateConfigurationChatToolConfigurationToolToolSpecInputSchema, Map<String, dynamic>>(inputSchema, (value) => value.toMap()),
      'name': name,
    };
  }

  factory AgentPromptVariantTemplateConfigurationChatToolConfigurationToolToolSpec.fromMap(Map<String, dynamic> map) {
    return AgentPromptVariantTemplateConfigurationChatToolConfigurationToolToolSpec(
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      inputSchema: map['inputSchema'] == null ? null : ((AgentPromptVariantTemplateConfigurationChatToolConfigurationToolToolSpecInputSchema.fromMap((map['inputSchema']! as Map).cast<String, dynamic>())).input()).input(),
      name: (map['name'] as String).input(),
    );
  }
}

