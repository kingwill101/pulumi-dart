// ignore_for_file: unused_element, unnecessary_cast

class LogTransformerTransformerConfigCopyValueEntry {
  /// Specifies whether to overwrite the value if the destination key already exists. Defaults to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  /// * `renameTo` - (Required) Specifies the new name of the key.
  final bool? overwriteIfExists;

  /// Specifies the key to modify.
  final String source;

  /// Specifies the key to move to.
  final String target;

  LogTransformerTransformerConfigCopyValueEntry({
    this.overwriteIfExists,
    required this.source,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final overwriteIfExistsValue = overwriteIfExists;
    if (overwriteIfExistsValue != null) {
      map['overwriteIfExists'] = overwriteIfExistsValue;
    }
    map['source'] = source;
    map['target'] = target;
    return map;
  }

  factory LogTransformerTransformerConfigCopyValueEntry.fromMap(
      Map<String, dynamic> map) {
    return LogTransformerTransformerConfigCopyValueEntry(
      overwriteIfExists: map['overwriteIfExists'] == null
          ? null
          : map['overwriteIfExists'] as bool,
      source: map['source'] as String,
      target: map['target'] as String,
    );
  }
}
