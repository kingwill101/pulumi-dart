// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LogTransformerTransformerConfigParseToOcsf {
  final pulumi.Input<String> eventSource;
  /// Specifies the version of the OCSF schema to use for the transformed log events. The only allowed value is `V1.1`.
  final pulumi.Input<String> ocsfVersion;
  /// Specifies the source field to be parsed. The only allowed value is `@message`. If omitted, the whole log message is processed.
  final pulumi.Input<String>? source;

  /// Creates a new [LogTransformerTransformerConfigParseToOcsf].
  /// [eventSource] Required.
  /// [ocsfVersion] Specifies the version of the OCSF schema to use for the transformed log events. The only allowed value is `V1.1`.
  /// [source] Specifies the source field to be parsed. The only allowed value is `@message`. If omitted, the whole log message is processed.
  const LogTransformerTransformerConfigParseToOcsf({
    required this.eventSource,
    required this.ocsfVersion,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventSource': eventSource,
      'ocsfVersion': ocsfVersion,
      'source': ?source,
    };
  }

  factory LogTransformerTransformerConfigParseToOcsf.fromMap(Map<String, dynamic> map) {
    return LogTransformerTransformerConfigParseToOcsf(
      eventSource: pulumi.Input.fromValue(map['eventSource'] as String),
      ocsfVersion: pulumi.Input.fromValue(map['ocsfVersion'] as String),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

