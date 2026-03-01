// ignore_for_file: unused_element, unnecessary_cast

class CxGenerativeSettingsLlmModelSettings {
  /// The selected LLM model.
  final String? model;

  /// The custom prompt to use.
  final String? promptText;

  /// Creates a new [CxGenerativeSettingsLlmModelSettings].
  /// [model] The selected LLM model.
  /// [promptText] The custom prompt to use.
  CxGenerativeSettingsLlmModelSettings({this.model, this.promptText});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'model': ?model, 'promptText': ?promptText};
  }

  factory CxGenerativeSettingsLlmModelSettings.fromMap(
    Map<String, dynamic> map,
  ) {
    return CxGenerativeSettingsLlmModelSettings(
      model: map['model'] == null ? null : map['model'] as String,
      promptText: map['promptText'] == null
          ? null
          : map['promptText'] as String,
    );
  }
}
