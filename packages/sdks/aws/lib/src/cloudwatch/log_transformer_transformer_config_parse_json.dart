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
  LogTransformerTransformerConfigParseJson({
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
      destination: map['destination'] == null ? null : ((map['destination'] as String).input()).input(),
      source: map['source'] == null ? null : ((map['source'] as String).input()).input(),
    );
  }
}

