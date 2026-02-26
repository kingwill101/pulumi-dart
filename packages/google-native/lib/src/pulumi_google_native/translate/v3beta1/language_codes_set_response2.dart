// ignore_for_file: unused_element, unnecessary_cast

/// Used with equivalent term set glossaries.
class LanguageCodesSetResponse2 {
  /// The BCP-47 language code(s) for terms defined in the glossary. All entries are unique. The list contains at least two entries. Expected to be an exact match for GlossaryTerm.language_code.
  final List<String> languageCodes;

  LanguageCodesSetResponse2({
    required this.languageCodes,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['languageCodes'] = languageCodes;
    return map;
  }

  factory LanguageCodesSetResponse2.fromMap(Map<String, dynamic> map) {
    return LanguageCodesSetResponse2(
      languageCodes: (map['languageCodes'] as List).cast<String>(),
    );
  }
}
