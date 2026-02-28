// ignore_for_file: unused_element, unnecessary_cast


/// Represents a single glossary term
class GlossaryTerm {
  /// The language for this glossary term.
  final String? languageCode;
  /// The text for the glossary term.
  final String? text;

  /// Creates a new [GlossaryTerm].
  /// [languageCode] The language for this glossary term.
  /// [text] The text for the glossary term.
  GlossaryTerm({
    this.languageCode,
    this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'languageCode': ?languageCode,
      'text': ?text,
    };
  }

  factory GlossaryTerm.fromMap(Map<String, dynamic> map) {
    return GlossaryTerm(
      languageCode: map['languageCode'] == null ? null : map['languageCode'] as String,
      text: map['text'] == null ? null : map['text'] as String,
    );
  }
}

