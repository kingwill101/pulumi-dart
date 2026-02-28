// ignore_for_file: unused_element, unnecessary_cast


class AgentPromptVariantTemplateConfigurationChatToolConfigurationToolToolSpecInputSchema {
  /// A JSON object defining the input schema for the tool.
  final String? json;

  /// Creates a new [AgentPromptVariantTemplateConfigurationChatToolConfigurationToolToolSpecInputSchema].
  /// [json] A JSON object defining the input schema for the tool.
  AgentPromptVariantTemplateConfigurationChatToolConfigurationToolToolSpecInputSchema({
    this.json,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'json': ?json,
    };
  }

  factory AgentPromptVariantTemplateConfigurationChatToolConfigurationToolToolSpecInputSchema.fromMap(Map<String, dynamic> map) {
    return AgentPromptVariantTemplateConfigurationChatToolConfigurationToolToolSpecInputSchema(
      json: map['json'] == null ? null : map['json'] as String,
    );
  }
}

