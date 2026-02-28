// ignore_for_file: unused_element, unnecessary_cast

class LogTransformerTransformerConfigParseCloudfront {
  /// Specifies the source field to be parsed. The only allowed value is `@message`. If omitted, the whole log message is processed.
  final String? source;

  /// Creates a new [LogTransformerTransformerConfigParseCloudfront].
  /// [source] Specifies the source field to be parsed. The only allowed value is `@message`. If omitted, the whole log message is processed.
  LogTransformerTransformerConfigParseCloudfront({
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

  factory LogTransformerTransformerConfigParseCloudfront.fromMap(
      Map<String, dynamic> map) {
    return LogTransformerTransformerConfigParseCloudfront(
      source: map['source'] == null ? null : map['source'] as String,
    );
  }
}
