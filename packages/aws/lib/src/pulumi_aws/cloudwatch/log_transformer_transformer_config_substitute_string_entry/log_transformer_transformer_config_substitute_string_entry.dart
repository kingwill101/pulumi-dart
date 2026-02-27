// ignore_for_file: unused_element, unnecessary_cast

class LogTransformerTransformerConfigSubstituteStringEntry {
  /// Specifies the regular expression string to be replaced.
  final String from;

  /// Specifies the key to modify.
  final String source;

  /// Specifies the string to be substituted for each match of `from`.
  final String to;

  LogTransformerTransformerConfigSubstituteStringEntry({
    required this.from,
    required this.source,
    required this.to,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['from'] = from;
    map['source'] = source;
    map['to'] = to;
    return map;
  }

  factory LogTransformerTransformerConfigSubstituteStringEntry.fromMap(
      Map<String, dynamic> map) {
    return LogTransformerTransformerConfigSubstituteStringEntry(
      from: map['from'] as String,
      source: map['source'] as String,
      to: map['to'] as String,
    );
  }
}
