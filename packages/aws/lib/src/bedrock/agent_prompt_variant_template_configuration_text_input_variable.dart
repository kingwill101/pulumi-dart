// ignore_for_file: unused_element, unnecessary_cast

class AgentPromptVariantTemplateConfigurationTextInputVariable {
  /// The name of the variable.
  final String name;

  /// Creates a new [AgentPromptVariantTemplateConfigurationTextInputVariable].
  /// [name] The name of the variable.
  AgentPromptVariantTemplateConfigurationTextInputVariable({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory AgentPromptVariantTemplateConfigurationTextInputVariable.fromMap(
      Map<String, dynamic> map) {
    return AgentPromptVariantTemplateConfigurationTextInputVariable(
      name: map['name'] as String,
    );
  }
}
