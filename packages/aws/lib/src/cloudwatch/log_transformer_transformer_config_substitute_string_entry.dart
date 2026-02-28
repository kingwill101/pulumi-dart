// ignore_for_file: unused_element, unnecessary_cast


class LogTransformerTransformerConfigSubstituteStringEntry {
  /// Specifies the regular expression string to be replaced.
  final String from;
  /// Specifies the key to modify.
  final String source;
  /// Specifies the string to be substituted for each match of `from`.
  final String to;

  /// Creates a new [LogTransformerTransformerConfigSubstituteStringEntry].
  /// [from] Specifies the regular expression string to be replaced.
  /// [source] Specifies the key to modify.
  /// [to] Specifies the string to be substituted for each match of `from`.
  LogTransformerTransformerConfigSubstituteStringEntry({
    required this.from,
    required this.source,
    required this.to,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'from': from,
      'source': source,
      'to': to,
    };
  }

  factory LogTransformerTransformerConfigSubstituteStringEntry.fromMap(Map<String, dynamic> map) {
    return LogTransformerTransformerConfigSubstituteStringEntry(
      from: map['from'] as String,
      source: map['source'] as String,
      to: map['to'] as String,
    );
  }
}

