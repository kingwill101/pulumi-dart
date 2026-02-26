// ignore_for_file: unused_element, unnecessary_cast

/// Used with equivalent term set glossaries.
class LanguageCodesSet {
  /// The ISO-639 language code(s) for terms defined in the glossary. All entries are unique. The list contains at least two entries. Expected to be an exact match for GlossaryTerm.language_code.
  final List<String>? languageCodes;

  LanguageCodesSet({
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

  factory LanguageCodesSet.fromMap(Map<String, dynamic> map) {
    return LanguageCodesSet(
      languageCodes: map['languageCodes'] == null
          ? null
          : (map['languageCodes'] as List).cast<String>(),
    );
  }
}
