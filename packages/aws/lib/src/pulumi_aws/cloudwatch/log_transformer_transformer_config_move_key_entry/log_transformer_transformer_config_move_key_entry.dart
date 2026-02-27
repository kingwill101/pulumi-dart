// ignore_for_file: unused_element, unnecessary_cast

class LogTransformerTransformerConfigMoveKeyEntry {
  /// Specifies whether to overwrite the value if the destination key already exists. Defaults to `false`.
  /// * `renameTo` - (Required) Specifies the new name of the key.
  final bool? overwriteIfExists;

  /// Specifies the key to modify.
  final String source;

  /// Specifies the key to move to.
  final String target;

  LogTransformerTransformerConfigMoveKeyEntry({
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

  factory LogTransformerTransformerConfigMoveKeyEntry.fromMap(
      Map<String, dynamic> map) {
    return LogTransformerTransformerConfigMoveKeyEntry(
      overwriteIfExists: map['overwriteIfExists'] == null
          ? null
          : map['overwriteIfExists'] as bool,
      source: map['source'] as String,
      target: map['target'] as String,
    );
  }
}
