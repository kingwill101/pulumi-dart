// ignore_for_file: unused_element, unnecessary_cast

/// Used with unidirectional glossaries.
class LanguageCodePairTranslateV3beta1 {
  /// The BCP-47 language code of the input text, for example, "en-US". Expected to be an exact match for GlossaryTerm.language_code.
  final String sourceLanguageCode;

  /// The BCP-47 language code for translation output, for example, "zh-CN". Expected to be an exact match for GlossaryTerm.language_code.
  final String targetLanguageCode;

  /// Creates a new [LanguageCodePairTranslateV3beta1].
  /// [sourceLanguageCode] The BCP-47 language code of the input text, for example, "en-US". Expected to be an exact match for GlossaryTerm.language_code.
  /// [targetLanguageCode] The BCP-47 language code for translation output, for example, "zh-CN". Expected to be an exact match for GlossaryTerm.language_code.
  LanguageCodePairTranslateV3beta1({
    required this.sourceLanguageCode,
    required this.targetLanguageCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sourceLanguageCode': sourceLanguageCode,
      'targetLanguageCode': targetLanguageCode,
    };
  }

  factory LanguageCodePairTranslateV3beta1.fromMap(Map<String, dynamic> map) {
    return LanguageCodePairTranslateV3beta1(
      sourceLanguageCode: map['sourceLanguageCode'] as String,
      targetLanguageCode: map['targetLanguageCode'] as String,
    );
  }
}
