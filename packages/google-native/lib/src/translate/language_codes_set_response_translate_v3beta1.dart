// ignore_for_file: unused_element, unnecessary_cast


/// Used with equivalent term set glossaries.
class LanguageCodesSetResponseTranslateV3beta1 {
  /// The BCP-47 language code(s) for terms defined in the glossary. All entries are unique. The list contains at least two entries. Expected to be an exact match for GlossaryTerm.language_code.
  final List<String> languageCodes;

  /// Creates a new [LanguageCodesSetResponseTranslateV3beta1].
  /// [languageCodes] The BCP-47 language code(s) for terms defined in the glossary. All entries are unique. The list contains at least two entries. Expected to be an exact match for GlossaryTerm.language_code.
  LanguageCodesSetResponseTranslateV3beta1({
    required this.languageCodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'languageCodes': languageCodes,
    };
  }

  factory LanguageCodesSetResponseTranslateV3beta1.fromMap(Map<String, dynamic> map) {
    return LanguageCodesSetResponseTranslateV3beta1(
      languageCodes: (map['languageCodes'] as List).cast<String>(),
    );
  }
}

