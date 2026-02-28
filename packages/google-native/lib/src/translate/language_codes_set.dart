// ignore_for_file: unused_element, unnecessary_cast


/// Used with equivalent term set glossaries.
class LanguageCodesSet {
  /// The ISO-639 language code(s) for terms defined in the glossary. All entries are unique. The list contains at least two entries. Expected to be an exact match for GlossaryTerm.language_code.
  final List<String>? languageCodes;

  /// Creates a new [LanguageCodesSet].
  /// [languageCodes] The ISO-639 language code(s) for terms defined in the glossary. All entries are unique. The list contains at least two entries. Expected to be an exact match for GlossaryTerm.language_code.
  LanguageCodesSet({
    this.languageCodes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'languageCodes': ?languageCodes,
    };
  }

  factory LanguageCodesSet.fromMap(Map<String, dynamic> map) {
    return LanguageCodesSet(
      languageCodes: map['languageCodes'] == null ? null : (map['languageCodes'] as List).cast<String>(),
    );
  }
}

