// ignore_for_file: unused_element, unnecessary_cast

class AgentPromptVariantTemplateConfigurationChatToolConfigurationToolChoiceTool {
  /// Name of the prompt.
  ///
  /// The following arguments are optional:
  final String name;

  /// Creates a new [AgentPromptVariantTemplateConfigurationChatToolConfigurationToolChoiceTool].
  /// [name] Name of the prompt.
  AgentPromptVariantTemplateConfigurationChatToolConfigurationToolChoiceTool({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name};
  }

  factory AgentPromptVariantTemplateConfigurationChatToolConfigurationToolChoiceTool.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentPromptVariantTemplateConfigurationChatToolConfigurationToolChoiceTool(
      name: map['name'] as String,
    );
  }
}
