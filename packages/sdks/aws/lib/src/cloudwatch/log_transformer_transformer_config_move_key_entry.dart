// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LogTransformerTransformerConfigMoveKeyEntry {
  /// Specifies whether to overwrite the value if the destination key already exists. Defaults to `false`.
  /// * `renameTo` - (Required) Specifies the new name of the key.
  final pulumi.Input<bool>? overwriteIfExists;

  /// Specifies the key to modify.
  final pulumi.Input<String> source;

  /// Specifies the key to move to.
  final pulumi.Input<String> target;

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
      overwriteIfExists: (() {
        final guardedValue = map['overwriteIfExists'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      source: pulumi.Input.fromValue(map['source'] as String),
      target: pulumi.Input.fromValue(map['target'] as String),
    );
  }
}
