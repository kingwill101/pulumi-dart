// ignore_for_file: unused_element, unnecessary_cast

class AgentPromptVariantTemplateConfigurationChatToolConfigurationToolChoiceTool {
  /// Name of the prompt.
  ///
  /// The following arguments are optional:
  final String name;

  AgentPromptVariantTemplateConfigurationChatToolConfigurationToolChoiceTool({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory AgentPromptVariantTemplateConfigurationChatToolConfigurationToolChoiceTool.fromMap(
      Map<String, dynamic> map) {
    return AgentPromptVariantTemplateConfigurationChatToolConfigurationToolChoiceTool(
      name: map['name'] as String,
    );
  }
}
