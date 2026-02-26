// ignore_for_file: unused_element, unnecessary_cast

class LogTransformerTransformerConfigRenameKeyEntry {
  /// Specifies the key with the value that will be converted to a different type.
  final String key;

  /// Specifies whether to overwrite the value if the destination key already exists. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  /// * `renameTo` - (Required) Specifies the new name of the key.
  final bool? overwriteIfExists;
  final String renameTo;

  LogTransformerTransformerConfigRenameKeyEntry({
    required this.key,
    this.overwriteIfExists,
    required this.renameTo,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['key'] = key;
    final overwriteIfExistsValue = overwriteIfExists;
    if (overwriteIfExistsValue != null) {
      map['overwriteIfExists'] = overwriteIfExistsValue;
    }
    map['renameTo'] = renameTo;
    return map;
  }

  factory LogTransformerTransformerConfigRenameKeyEntry.fromMap(
      Map<String, dynamic> map) {
    return LogTransformerTransformerConfigRenameKeyEntry(
      key: map['key'] as String,
      overwriteIfExists: map['overwriteIfExists'] == null
          ? null
          : map['overwriteIfExists'] as bool,
      renameTo: map['renameTo'] as String,
    );
  }
}
