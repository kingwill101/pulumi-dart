// ignore_for_file: unused_element, unnecessary_cast


/// Represents a single glossary term
class GlossaryTermResponse {
  /// The language for this glossary term.
  final String languageCode;
  /// The text for the glossary term.
  final String text;

  /// Creates a new [GlossaryTermResponse].
  /// [languageCode] The language for this glossary term.
  /// [text] The text for the glossary term.
  GlossaryTermResponse({
    required this.languageCode,
    required this.text,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'languageCode': languageCode,
      'text': text,
    };
  }

  factory GlossaryTermResponse.fromMap(Map<String, dynamic> map) {
    return GlossaryTermResponse(
      languageCode: map['languageCode'] as String,
      text: map['text'] as String,
    );
  }
}

