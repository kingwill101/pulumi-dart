// ignore_for_file: unused_element, unnecessary_cast

class LogTransformerTransformerConfigParseRoute53 {
  /// Specifies the source field to be parsed. The only allowed value is `@message`. If omitted, the whole log message is processed.
  final String? source;

  /// Creates a new [LogTransformerTransformerConfigParseRoute53].
  /// [source] Specifies the source field to be parsed. The only allowed value is `@message`. If omitted, the whole log message is processed.
  LogTransformerTransformerConfigParseRoute53({this.source});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'source': ?source};
  }

  factory LogTransformerTransformerConfigParseRoute53.fromMap(
    Map<String, dynamic> map,
  ) {
    return LogTransformerTransformerConfigParseRoute53(
      source: map['source'] == null ? null : map['source'] as String,
    );
  }
}
