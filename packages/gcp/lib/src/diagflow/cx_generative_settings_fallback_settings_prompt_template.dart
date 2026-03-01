// ignore_for_file: unused_element, unnecessary_cast

class CxGenerativeSettingsFallbackSettingsPromptTemplate {
  /// Prompt name.
  final String? displayName;

  /// If the flag is true, the prompt is frozen and cannot be modified by users.
  final bool? frozen;

  /// Prompt text that is sent to a LLM on no-match default, placeholders are filled downstream. For example: "Here is a conversation $conversation, a response is: "
  final String? promptText;

  /// Creates a new [CxGenerativeSettingsFallbackSettingsPromptTemplate].
  /// [displayName] Prompt name.
  /// [frozen] If the flag is true, the prompt is frozen and cannot be modified by users.
  /// [promptText] Prompt text that is sent to a LLM on no-match default, placeholders are filled downstream. For example: "Here is a conversation $conversation, a response is: "
  CxGenerativeSettingsFallbackSettingsPromptTemplate({
    this.displayName,
    this.frozen,
    this.promptText,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'frozen': ?frozen,
      'promptText': ?promptText,
    };
  }

  factory CxGenerativeSettingsFallbackSettingsPromptTemplate.fromMap(
    Map<String, dynamic> map,
  ) {
    return CxGenerativeSettingsFallbackSettingsPromptTemplate(
      displayName: map['displayName'] == null
          ? null
          : map['displayName'] as String,
      frozen: map['frozen'] == null ? null : map['frozen'] as bool,
      promptText: map['promptText'] == null
          ? null
          : map['promptText'] as String,
    );
  }
}
