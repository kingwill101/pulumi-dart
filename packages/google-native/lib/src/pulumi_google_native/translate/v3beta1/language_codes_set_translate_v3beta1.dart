// ignore_for_file: unused_element, unnecessary_cast

/// Used with equivalent term set glossaries.
class LanguageCodesSetTranslateV3beta1 {
  /// The BCP-47 language code(s) for terms defined in the glossary. All entries are unique. The list contains at least two entries. Expected to be an exact match for GlossaryTerm.language_code.
  final List<String>? languageCodes;

  LanguageCodesSetTranslateV3beta1({
    this.languageCodes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final languageCodesValue = languageCodes;
    if (languageCodesValue != null) {
      map['languageCodes'] = languageCodesValue;
    }
    return map;
  }

  factory LanguageCodesSetTranslateV3beta1.fromMap(Map<String, dynamic> map) {
    return LanguageCodesSetTranslateV3beta1(
      languageCodes: map['languageCodes'] == null
          ? null
          : (map['languageCodes'] as List).cast<String>(),
    );
  }
}
