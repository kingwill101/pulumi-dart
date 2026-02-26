// ignore_for_file: unused_element, unnecessary_cast

class GuardrailLlmPromptSecurityDefaultSettings {
  /// (Output)
  /// The default prompt template used by the system.
  /// This field is for display purposes to show the user what prompt
  /// the system uses by default. It is OUTPUT_ONLY.
  final String? defaultPromptTemplate;

  GuardrailLlmPromptSecurityDefaultSettings({
    this.defaultPromptTemplate,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final defaultPromptTemplateValue = defaultPromptTemplate;
    if (defaultPromptTemplateValue != null) {
      map['defaultPromptTemplate'] = defaultPromptTemplateValue;
    }
    return map;
  }

  factory GuardrailLlmPromptSecurityDefaultSettings.fromMap(
      Map<String, dynamic> map) {
    return GuardrailLlmPromptSecurityDefaultSettings(
      defaultPromptTemplate: map['defaultPromptTemplate'] == null
          ? null
          : map['defaultPromptTemplate'] as String,
    );
  }
}
