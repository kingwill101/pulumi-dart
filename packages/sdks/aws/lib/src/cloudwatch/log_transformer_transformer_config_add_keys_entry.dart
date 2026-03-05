// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class LogTransformerTransformerConfigAddKeysEntry {
  /// Specifies the key with the value that will be converted to a different type.
  final pulumi.Input<String> key;
  /// Specifies whether to overwrite the value if the destination key already exists. Defaults to `false`.
  /// * `renameTo` - (Required) Specifies the new name of the key.
  final pulumi.Input<bool>? overwriteIfExists;
  /// Specifies the value of the new entry to be added to the log event.
  final pulumi.Input<String> value;

  /// Creates a new [LogTransformerTransformerConfigAddKeysEntry].
  /// [key] Specifies the key with the value that will be converted to a different type.
  /// [overwriteIfExists] Specifies whether to overwrite the value if the destination key already exists. Defaults to `false`.
  /// [value] Specifies the value of the new entry to be added to the log event.
  LogTransformerTransformerConfigAddKeysEntry({
    required this.key,
    this.overwriteIfExists,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': key,
      'overwriteIfExists': ?overwriteIfExists,
      'value': value,
    };
  }

  factory LogTransformerTransformerConfigAddKeysEntry.fromMap(Map<String, dynamic> map) {
    return LogTransformerTransformerConfigAddKeysEntry(
      key: pulumi.Input.fromValue(map['key'] as String),
      overwriteIfExists: (() { final guardedValue = map['overwriteIfExists']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

