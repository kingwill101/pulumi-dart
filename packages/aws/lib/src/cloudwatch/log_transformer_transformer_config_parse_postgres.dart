// ignore_for_file: unused_element, unnecessary_cast

class LogTransformerTransformerConfigParsePostgres {
  /// Specifies the source field to be parsed. The only allowed value is `@message`. If omitted, the whole log message is processed.
  final String? source;

  /// Creates a new [LogTransformerTransformerConfigParsePostgres].
  /// [source] Specifies the source field to be parsed. The only allowed value is `@message`. If omitted, the whole log message is processed.
  LogTransformerTransformerConfigParsePostgres({
    this.source,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final sourceValue = source;
    if (sourceValue != null) {
      map['source'] = sourceValue;
    }
    return map;
  }

  factory LogTransformerTransformerConfigParsePostgres.fromMap(
      Map<String, dynamic> map) {
    return LogTransformerTransformerConfigParsePostgres(
      source: map['source'] == null ? null : map['source'] as String,
    );
  }
}
