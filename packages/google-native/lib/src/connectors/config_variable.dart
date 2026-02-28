// ignore_for_file: unused_element, unnecessary_cast

import 'encryption_key.dart';
import 'secret.dart';

/// ConfigVariable represents a configuration variable present in a Connection. or AuthConfig.
class ConfigVariable {
  /// Value is a bool.
  final bool? boolValue;

  /// Value is a Encryption Key.
  final EncryptionKey? encryptionKeyValue;

  /// Value is an integer
  final String? intValue;

  /// Key of the config variable.
  final String? key;

  /// Value is a secret.
  final Secret? secretValue;

  /// Value is a string.
  final String? stringValue;

  /// Creates a new [ConfigVariable].
  /// [boolValue] Value is a bool.
  /// [encryptionKeyValue] Value is a Encryption Key.
  /// [intValue] Value is an integer
  /// [key] Key of the config variable.
  /// [secretValue] Value is a secret.
  /// [stringValue] Value is a string.
  ConfigVariable({
    this.boolValue,
    this.encryptionKeyValue,
    this.intValue,
    this.key,
    this.secretValue,
    this.stringValue,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final boolValueValue = boolValue;
    if (boolValueValue != null) {
      map['boolValue'] = boolValueValue;
    }
    final encryptionKeyValueValue = encryptionKeyValue;
    if (encryptionKeyValueValue != null) {
      map['encryptionKeyValue'] = encryptionKeyValueValue.toMap();
    }
    final intValueValue = intValue;
    if (intValueValue != null) {
      map['intValue'] = intValueValue;
    }
    final keyValue = key;
    if (keyValue != null) {
      map['key'] = keyValue;
    }
    final secretValueValue = secretValue;
    if (secretValueValue != null) {
      map['secretValue'] = secretValueValue.toMap();
    }
    final stringValueValue = stringValue;
    if (stringValueValue != null) {
      map['stringValue'] = stringValueValue;
    }
    return map;
  }

  factory ConfigVariable.fromMap(Map<String, dynamic> map) {
    return ConfigVariable(
      boolValue: map['boolValue'] == null ? null : map['boolValue'] as bool,
      encryptionKeyValue: map['encryptionKeyValue'] == null
          ? null
          : EncryptionKey.fromMap(
              (map['encryptionKeyValue'] as Map).cast<String, dynamic>()),
      intValue: map['intValue'] == null ? null : map['intValue'] as String,
      key: map['key'] == null ? null : map['key'] as String,
      secretValue: map['secretValue'] == null
          ? null
          : Secret.fromMap((map['secretValue'] as Map).cast<String, dynamic>()),
      stringValue:
          map['stringValue'] == null ? null : map['stringValue'] as String,
    );
  }
}
