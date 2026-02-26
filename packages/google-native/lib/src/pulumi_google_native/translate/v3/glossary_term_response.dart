// ignore_for_file: unused_element, unnecessary_cast

/// Represents a single glossary term
class GlossaryTermResponse {
  /// The language for this glossary term.
  final String languageCode;

  /// The text for the glossary term.
  final String text;

  GlossaryTermResponse({
    required this.languageCode,
    required this.text,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['languageCode'] = languageCode;
    map['text'] = text;
    return map;
  }

  factory GlossaryTermResponse.fromMap(Map<String, dynamic> map) {
    return GlossaryTermResponse(
      languageCode: map['languageCode'] as String,
      text: map['text'] as String,
    );
  }
}
