// ignore_for_file: unused_element, unnecessary_cast


class LogTransformerTransformerConfigRenameKeyEntry {
  /// Specifies the key with the value that will be converted to a different type.
  final String key;
  /// Specifies whether to overwrite the value if the destination key already exists. Defaults to `false`.
  /// * `renameTo` - (Required) Specifies the new name of the key.
  final bool? overwriteIfExists;
  final String renameTo;

  /// Creates a new [LogTransformerTransformerConfigRenameKeyEntry].
  /// [key] Specifies the key with the value that will be converted to a different type.
  /// [overwriteIfExists] Specifies whether to overwrite the value if the destination key already exists. Defaults to `false`.
  /// [renameTo] Required.
  LogTransformerTransformerConfigRenameKeyEntry({
    required this.key,
    this.overwriteIfExists,
    required this.renameTo,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'overwriteIfExists': ?overwriteIfExists,
      'renameTo': renameTo,
    };
  }

  factory LogTransformerTransformerConfigRenameKeyEntry.fromMap(Map<String, dynamic> map) {
    return LogTransformerTransformerConfigRenameKeyEntry(
      key: map['key'] as String,
      overwriteIfExists: map['overwriteIfExists'] == null ? null : map['overwriteIfExists'] as bool,
      renameTo: map['renameTo'] as String,
    );
  }
}

