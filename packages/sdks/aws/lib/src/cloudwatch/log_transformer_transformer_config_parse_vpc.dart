// ignore_for_file: unused_element, unnecessary_cast


class LogTransformerTransformerConfigParseVpc {
  /// Specifies the source field to be parsed. The only allowed value is `@message`. If omitted, the whole log message is processed.
  final String? source;

  /// Creates a new [LogTransformerTransformerConfigParseVpc].
  /// [source] Specifies the source field to be parsed. The only allowed value is `@message`. If omitted, the whole log message is processed.
  LogTransformerTransformerConfigParseVpc({
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'source': ?source,
    };
  }

  factory LogTransformerTransformerConfigParseVpc.fromMap(Map<String, dynamic> map) {
    return LogTransformerTransformerConfigParseVpc(
      source: map['source'] == null ? null : map['source'] as String,
    );
  }
}

