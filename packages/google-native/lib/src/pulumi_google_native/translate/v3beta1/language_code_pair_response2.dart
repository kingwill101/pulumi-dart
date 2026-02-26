// ignore_for_file: unused_element, unnecessary_cast

/// Used with unidirectional glossaries.
class LanguageCodePairResponse2 {
  /// The BCP-47 language code of the input text, for example, "en-US". Expected to be an exact match for GlossaryTerm.language_code.
  final String sourceLanguageCode;

  /// The BCP-47 language code for translation output, for example, "zh-CN". Expected to be an exact match for GlossaryTerm.language_code.
  final String targetLanguageCode;

  LanguageCodePairResponse2({
    required this.sourceLanguageCode,
    required this.targetLanguageCode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['sourceLanguageCode'] = sourceLanguageCode;
    map['targetLanguageCode'] = targetLanguageCode;
    return map;
  }

  factory LanguageCodePairResponse2.fromMap(Map<String, dynamic> map) {
    return LanguageCodePairResponse2(
      sourceLanguageCode: map['sourceLanguageCode'] as String,
      targetLanguageCode: map['targetLanguageCode'] as String,
    );
  }
}
