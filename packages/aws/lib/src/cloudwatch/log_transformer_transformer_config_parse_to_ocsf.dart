// ignore_for_file: unused_element, unnecessary_cast

class LogTransformerTransformerConfigParseToOcsf {
  final String eventSource;

  /// Specifies the version of the OCSF schema to use for the transformed log events. The only allowed value is `V1.1`.
  final String ocsfVersion;

  /// Specifies the source field to be parsed. The only allowed value is `@message`. If omitted, the whole log message is processed.
  final String? source;

  /// Creates a new [LogTransformerTransformerConfigParseToOcsf].
  /// [eventSource] Required.
  /// [ocsfVersion] Specifies the version of the OCSF schema to use for the transformed log events. The only allowed value is `V1.1`.
  /// [source] Specifies the source field to be parsed. The only allowed value is `@message`. If omitted, the whole log message is processed.
  LogTransformerTransformerConfigParseToOcsf({
    required this.eventSource,
    required this.ocsfVersion,
    this.source,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['eventSource'] = eventSource;
    map['ocsfVersion'] = ocsfVersion;
    final sourceValue = source;
    if (sourceValue != null) {
      map['source'] = sourceValue;
    }
    return map;
  }

  factory LogTransformerTransformerConfigParseToOcsf.fromMap(
      Map<String, dynamic> map) {
    return LogTransformerTransformerConfigParseToOcsf(
      eventSource: map['eventSource'] as String,
      ocsfVersion: map['ocsfVersion'] as String,
      source: map['source'] == null ? null : map['source'] as String,
    );
  }
}
