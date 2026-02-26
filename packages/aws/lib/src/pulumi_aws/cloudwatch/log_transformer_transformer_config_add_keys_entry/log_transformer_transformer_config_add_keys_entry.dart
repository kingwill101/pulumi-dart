// ignore_for_file: unused_element, unnecessary_cast

class LogTransformerTransformerConfigAddKeysEntry {
  /// Specifies the key with the value that will be converted to a different type.
  final String key;

  /// Specifies whether to overwrite the value if the destination key already exists. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  /// * `renameTo` - (Required) Specifies the new name of the key.
  final bool? overwriteIfExists;

  /// Specifies the value of the new entry to be added to the log event.
  final String value;

  LogTransformerTransformerConfigAddKeysEntry({
    required this.key,
    this.overwriteIfExists,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    final overwriteIfExistsValue = overwriteIfExists;
    if (overwriteIfExistsValue != null) {
      map['overwriteIfExists'] = overwriteIfExistsValue;
    }
    map['value'] = value;
    return map;
  }

  factory LogTransformerTransformerConfigAddKeysEntry.fromMap(
      Map<String, dynamic> map) {
    return LogTransformerTransformerConfigAddKeysEntry(
      key: map['key'] as String,
      overwriteIfExists: map['overwriteIfExists'] == null
          ? null
          : map['overwriteIfExists'] as bool,
      value: map['value'] as String,
    );
  }
}
