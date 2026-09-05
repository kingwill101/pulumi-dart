// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LogTransformerTransformerConfigParseWaf {
  /// Specifies the source field to be parsed. The only allowed value is `@message`. If omitted, the whole log message is processed.
  final pulumi.Input<String?>? source;

  /// Creates a new [LogTransformerTransformerConfigParseWaf].
  /// [source] Specifies the source field to be parsed. The only allowed value is `@message`. If omitted, the whole log message is processed.
  const LogTransformerTransformerConfigParseWaf({
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'source': ?source,
    };
  }

  factory LogTransformerTransformerConfigParseWaf.fromMap(Map<String, dynamic> map) {
    return LogTransformerTransformerConfigParseWaf(
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
