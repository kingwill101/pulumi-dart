// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LogTransformerTransformerConfigParseJson {
  /// Specifies the location to put the parsed key value pair into. If omitted, it will be placed under the root node.
  final pulumi.Input<String>? destination;
  /// Specifies the path to the field in the log event that will be parsed. Defaults to `@message`.
  final pulumi.Input<String>? source;

  /// Creates a new [LogTransformerTransformerConfigParseJson].
  /// [destination] Specifies the location to put the parsed key value pair into. If omitted, it will be placed under the root node.
  /// [source] Specifies the path to the field in the log event that will be parsed. Defaults to `@message`.
  const LogTransformerTransformerConfigParseJson({
    this.destination,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': ?destination,
      'source': ?source,
    };
  }

  factory LogTransformerTransformerConfigParseJson.fromMap(Map<String, dynamic> map) {
    return LogTransformerTransformerConfigParseJson(
      destination: (() { final guardedValue = map['destination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

