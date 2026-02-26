// ignore_for_file: unused_element, unnecessary_cast

class LogTransformerTransformerConfigParseJson {
  /// Specifies the location to put the parsed key value pair into. If omitted, it will be placed under the root node.
  final String? destination;

  /// Specifies the path to the field in the log event that will be parsed. Defaults to `@message`.
  final String? source;

  LogTransformerTransformerConfigParseJson({
    this.destination,
    this.source,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final destinationValue = destination;
    if (destinationValue != null) {
      map['destination'] = destinationValue;
    }
    final sourceValue = source;
    if (sourceValue != null) {
      map['source'] = sourceValue;
    }
    return map;
  }

  factory LogTransformerTransformerConfigParseJson.fromMap(
      Map<String, dynamic> map) {
    return LogTransformerTransformerConfigParseJson(
      destination:
          map['destination'] == null ? null : map['destination'] as String,
      source: map['source'] == null ? null : map['source'] as String,
    );
  }
}
