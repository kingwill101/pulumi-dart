// ignore_for_file: unused_element, unnecessary_cast

class LogTransformerTransformerConfigGrok {
  /// Specifies the grok pattern to match against the log event.
  final String match;

  /// Specifies the path to the field in the log event that has the comma separated values to be parsed. If omitted, the whole log message is processed.
  final String? source;

  LogTransformerTransformerConfigGrok({
    required this.match,
    this.source,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['match'] = match;
    final sourceValue = source;
    if (sourceValue != null) {
      map['source'] = sourceValue;
    }
    return map;
  }

  factory LogTransformerTransformerConfigGrok.fromMap(
      Map<String, dynamic> map) {
    return LogTransformerTransformerConfigGrok(
      match: map['match'] as String,
      source: map['source'] == null ? null : map['source'] as String,
    );
  }
}
