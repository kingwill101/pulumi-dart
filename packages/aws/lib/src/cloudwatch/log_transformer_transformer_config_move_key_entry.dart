// ignore_for_file: unused_element, unnecessary_cast

class LogTransformerTransformerConfigMoveKeyEntry {
  /// Specifies whether to overwrite the value if the destination key already exists. Defaults to `false`.
  /// * `renameTo` - (Required) Specifies the new name of the key.
  final bool? overwriteIfExists;

  /// Specifies the key to modify.
  final String source;

  /// Specifies the key to move to.
  final String target;

  /// Creates a new [LogTransformerTransformerConfigMoveKeyEntry].
  /// [overwriteIfExists] Specifies whether to overwrite the value if the destination key already exists. Defaults to `false`.
  /// [source] Specifies the key to modify.
  /// [target] Specifies the key to move to.
  LogTransformerTransformerConfigMoveKeyEntry({
    this.overwriteIfExists,
    required this.source,
    required this.target,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'overwriteIfExists': ?overwriteIfExists,
      'source': source,
      'target': target,
    };
  }

  factory LogTransformerTransformerConfigMoveKeyEntry.fromMap(
    Map<String, dynamic> map,
  ) {
    return LogTransformerTransformerConfigMoveKeyEntry(
      overwriteIfExists: map['overwriteIfExists'] == null
          ? null
          : map['overwriteIfExists'] as bool,
      source: map['source'] as String,
      target: map['target'] as String,
    );
  }
}
