// ignore_for_file: unused_element, unnecessary_cast

class AgentPromptVariantTemplateConfigurationChatInputVariable {
  /// The name of the variable.
  final String name;

  /// Creates a new [AgentPromptVariantTemplateConfigurationChatInputVariable].
  /// [name] The name of the variable.
  AgentPromptVariantTemplateConfigurationChatInputVariable({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name};
  }

  factory AgentPromptVariantTemplateConfigurationChatInputVariable.fromMap(
    Map<String, dynamic> map,
  ) {
    return AgentPromptVariantTemplateConfigurationChatInputVariable(
      name: map['name'] as String,
    );
  }
}
