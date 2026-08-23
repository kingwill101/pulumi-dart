// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LogTransformerTransformerConfigParseKeyValue {
  /// Specifies the destination field to put the extracted key-value pairs into.
  final pulumi.Input<String>? destination;
  /// Specifies the field delimiter string that is used between key-value pairs in the original log events. Defaults to the ampersand `&` character.
  final pulumi.Input<String>? fieldDelimiter;
  /// Specifies a prefix that will be added to all transformed keys.
  final pulumi.Input<String>? keyPrefix;
  /// Specifies the delimiter string to use between the key and value in each pair in the transformed log event. Defaults to the equal `=` character.
  final pulumi.Input<String>? keyValueDelimiter;
  /// Specifies a value to insert into the value field in the result if a key-value pair is not successfully split.
  final pulumi.Input<String>? nonMatchValue;
  /// Specifies whether to overwrite the value if the destination key already exists. Defaults to `false`.
  final pulumi.Input<bool>? overwriteIfExists;
  /// Specifies the path to the field in the log event that will be parsed. Defaults to `@message`.
  final pulumi.Input<String>? source;

  /// Creates a new [LogTransformerTransformerConfigParseKeyValue].
  /// [destination] Specifies the destination field to put the extracted key-value pairs into.
  /// [fieldDelimiter] Specifies the field delimiter string that is used between key-value pairs in the original log events. Defaults to the ampersand `&` character.
  /// [keyPrefix] Specifies a prefix that will be added to all transformed keys.
  /// [keyValueDelimiter] Specifies the delimiter string to use between the key and value in each pair in the transformed log event. Defaults to the equal `=` character.
  /// [nonMatchValue] Specifies a value to insert into the value field in the result if a key-value pair is not successfully split.
  /// [overwriteIfExists] Specifies whether to overwrite the value if the destination key already exists. Defaults to `false`.
  /// [source] Specifies the path to the field in the log event that will be parsed. Defaults to `@message`.
  const LogTransformerTransformerConfigParseKeyValue({
    this.destination,
    this.fieldDelimiter,
    this.keyPrefix,
    this.keyValueDelimiter,
    this.nonMatchValue,
    this.overwriteIfExists,
    this.source,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'destination': ?destination,
      'fieldDelimiter': ?fieldDelimiter,
      'keyPrefix': ?keyPrefix,
      'keyValueDelimiter': ?keyValueDelimiter,
      'nonMatchValue': ?nonMatchValue,
      'overwriteIfExists': ?overwriteIfExists,
      'source': ?source,
    };
  }

  factory LogTransformerTransformerConfigParseKeyValue.fromMap(Map<String, dynamic> map) {
    return LogTransformerTransformerConfigParseKeyValue(
      destination: (() { final guardedValue = map['destination']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      fieldDelimiter: (() { final guardedValue = map['fieldDelimiter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyPrefix: (() { final guardedValue = map['keyPrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyValueDelimiter: (() { final guardedValue = map['keyValueDelimiter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nonMatchValue: (() { final guardedValue = map['nonMatchValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      overwriteIfExists: (() { final guardedValue = map['overwriteIfExists']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
