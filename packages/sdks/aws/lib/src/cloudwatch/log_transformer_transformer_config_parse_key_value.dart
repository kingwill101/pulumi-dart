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
  LogTransformerTransformerConfigParseKeyValue({
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
      destination: map['destination'] == null ? null : ((map['destination'] as String).input()).input(),
      fieldDelimiter: map['fieldDelimiter'] == null ? null : ((map['fieldDelimiter'] as String).input()).input(),
      keyPrefix: map['keyPrefix'] == null ? null : ((map['keyPrefix'] as String).input()).input(),
      keyValueDelimiter: map['keyValueDelimiter'] == null ? null : ((map['keyValueDelimiter'] as String).input()).input(),
      nonMatchValue: map['nonMatchValue'] == null ? null : ((map['nonMatchValue'] as String).input()).input(),
      overwriteIfExists: map['overwriteIfExists'] == null ? null : ((map['overwriteIfExists'] as bool).input()).input(),
      source: map['source'] == null ? null : ((map['source'] as String).input()).input(),
    );
  }
}

