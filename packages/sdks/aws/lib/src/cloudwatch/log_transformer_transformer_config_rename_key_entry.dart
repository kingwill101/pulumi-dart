// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LogTransformerTransformerConfigRenameKeyEntry {
  /// Specifies the key with the value that will be converted to a different type.
  final pulumi.Input<String> key;
  /// Specifies whether to overwrite the value if the destination key already exists. Defaults to `false`.
  /// * `renameTo` - (Required) Specifies the new name of the key.
  final pulumi.Input<bool>? overwriteIfExists;
  final pulumi.Input<String> renameTo;

  /// Creates a new [LogTransformerTransformerConfigRenameKeyEntry].
  /// [key] Specifies the key with the value that will be converted to a different type.
  /// [overwriteIfExists] Specifies whether to overwrite the value if the destination key already exists. Defaults to `false`.
  /// [renameTo] Required.
  const LogTransformerTransformerConfigRenameKeyEntry({
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
      key: pulumi.Input.fromValue(map['key'] as String),
      overwriteIfExists: (() { final guardedValue = map['overwriteIfExists']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      renameTo: pulumi.Input.fromValue(map['renameTo'] as String),
    );
  }
}
