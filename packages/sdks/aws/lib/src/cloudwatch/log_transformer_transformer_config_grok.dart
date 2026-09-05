// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LogTransformerTransformerConfigGrok {
  /// Specifies the grok pattern to match against the log event.
  final pulumi.Input<String> match;
  /// Specifies the path to the field in the log event that has the comma separated values to be parsed. If omitted, the whole log message is processed.
  final pulumi.Input<String?>? source;

  /// Creates a new [LogTransformerTransformerConfigGrok].
  /// [match] Specifies the grok pattern to match against the log event.
  /// [source] Specifies the path to the field in the log event that has the comma separated values to be parsed. If omitted, the whole log message is processed.
  const LogTransformerTransformerConfigGrok({
    required this.match,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'match': match,
      'source': ?source,
    };
  }

  factory LogTransformerTransformerConfigGrok.fromMap(Map<String, dynamic> map) {
    return LogTransformerTransformerConfigGrok(
      match: pulumi.Input.fromValue(map['match'] as String),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
