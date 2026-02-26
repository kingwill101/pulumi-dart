// ignore_for_file: unused_element, unnecessary_cast

class CxGenerativeSettingsLlmModelSettings {
  /// The selected LLM model.
  final String? model;

  /// The custom prompt to use.
  final String? promptText;

  CxGenerativeSettingsLlmModelSettings({
    this.model,
    this.promptText,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final modelValue = model;
    if (modelValue != null) {
      map['model'] = modelValue;
    }
    final promptTextValue = promptText;
    if (promptTextValue != null) {
      map['promptText'] = promptTextValue;
    }
    return map;
  }

  factory CxGenerativeSettingsLlmModelSettings.fromMap(
      Map<String, dynamic> map) {
    return CxGenerativeSettingsLlmModelSettings(
      model: map['model'] == null ? null : map['model'] as String,
      promptText:
          map['promptText'] == null ? null : map['promptText'] as String,
    );
  }
}
