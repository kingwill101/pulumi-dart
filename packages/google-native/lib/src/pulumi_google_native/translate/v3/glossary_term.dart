// ignore_for_file: unused_element, unnecessary_cast

/// Represents a single glossary term
class GlossaryTerm {
  /// The language for this glossary term.
  final String? languageCode;

  /// The text for the glossary term.
  final String? text;

  GlossaryTerm({
    this.languageCode,
    this.text,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final languageCodeValue = languageCode;
    if (languageCodeValue != null) {
      map['languageCode'] = languageCodeValue;
    }
    final textValue = text;
    if (textValue != null) {
      map['text'] = textValue;
    }
    return map;
  }

  factory GlossaryTerm.fromMap(Map<String, dynamic> map) {
    return GlossaryTerm(
      languageCode:
          map['languageCode'] == null ? null : map['languageCode'] as String,
      text: map['text'] == null ? null : map['text'] as String,
    );
  }
}
