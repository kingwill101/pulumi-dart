// ignore_for_file: unused_element, unnecessary_cast

class LogTransformerTransformerConfigParseKeyValue {
  /// Specifies the destination field to put the extracted key-value pairs into.
  final String? destination;

  /// Specifies the field delimiter string that is used between key-value pairs in the original log events. Defaults to the ampersand `&` character.
  final String? fieldDelimiter;

  /// Specifies a prefix that will be added to all transformed keys.
  final String? keyPrefix;

  /// Specifies the delimiter string to use between the key and value in each pair in the transformed log event. Defaults to the equal `=` character.
  final String? keyValueDelimiter;

  /// Specifies a value to insert into the value field in the result if a key-value pair is not successfully split.
  final String? nonMatchValue;

  /// Specifies whether to overwrite the value if the destination key already exists. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? overwriteIfExists;

  /// Specifies the path to the field in the log event that will be parsed. Defaults to `@message`.
  final String? source;

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
    final map = <String, dynamic>{};
    final destinationValue = destination;
    if (destinationValue != null) {
      map['destination'] = destinationValue;
    }
    final fieldDelimiterValue = fieldDelimiter;
    if (fieldDelimiterValue != null) {
      map['fieldDelimiter'] = fieldDelimiterValue;
    }
    final keyPrefixValue = keyPrefix;
    if (keyPrefixValue != null) {
      map['keyPrefix'] = keyPrefixValue;
    }
    final keyValueDelimiterValue = keyValueDelimiter;
    if (keyValueDelimiterValue != null) {
      map['keyValueDelimiter'] = keyValueDelimiterValue;
    }
    final nonMatchValueValue = nonMatchValue;
    if (nonMatchValueValue != null) {
      map['nonMatchValue'] = nonMatchValueValue;
    }
    final overwriteIfExistsValue = overwriteIfExists;
    if (overwriteIfExistsValue != null) {
      map['overwriteIfExists'] = overwriteIfExistsValue;
    }
    final sourceValue = source;
    if (sourceValue != null) {
      map['source'] = sourceValue;
    }
    return map;
  }

  factory LogTransformerTransformerConfigParseKeyValue.fromMap(
      Map<String, dynamic> map) {
    return LogTransformerTransformerConfigParseKeyValue(
      destination:
          map['destination'] == null ? null : map['destination'] as String,
      fieldDelimiter: map['fieldDelimiter'] == null
          ? null
          : map['fieldDelimiter'] as String,
      keyPrefix: map['keyPrefix'] == null ? null : map['keyPrefix'] as String,
      keyValueDelimiter: map['keyValueDelimiter'] == null
          ? null
          : map['keyValueDelimiter'] as String,
      nonMatchValue:
          map['nonMatchValue'] == null ? null : map['nonMatchValue'] as String,
      overwriteIfExists: map['overwriteIfExists'] == null
          ? null
          : map['overwriteIfExists'] as bool,
      source: map['source'] == null ? null : map['source'] as String,
    );
  }
}
