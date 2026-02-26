// ignore_for_file: unused_element, unnecessary_cast

class CxGenerativeSettingsFallbackSettingsPromptTemplate {
  /// Prompt name.
  final String? displayName;

  /// If the flag is true, the prompt is frozen and cannot be modified by users.
  final bool? frozen;

  /// Prompt text that is sent to a LLM on no-match default, placeholders are filled downstream. For example: "Here is a conversation $conversation, a response is: "
  final String? promptText;

  CxGenerativeSettingsFallbackSettingsPromptTemplate({
    this.displayName,
    this.frozen,
    this.promptText,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final frozenValue = frozen;
    if (frozenValue != null) {
      map['frozen'] = frozenValue;
    }
    final promptTextValue = promptText;
    if (promptTextValue != null) {
      map['promptText'] = promptTextValue;
    }
    return map;
  }

  factory CxGenerativeSettingsFallbackSettingsPromptTemplate.fromMap(
      Map<String, dynamic> map) {
    return CxGenerativeSettingsFallbackSettingsPromptTemplate(
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      frozen: map['frozen'] == null ? null : map['frozen'] as bool,
      promptText:
          map['promptText'] == null ? null : map['promptText'] as String,
    );
  }
}
