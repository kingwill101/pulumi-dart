// ignore_for_file: unused_element, unnecessary_cast

import 'key_vault_key_reference.dart';

/// Cache encryption settings.
class CacheEncryptionSettings {
  /// Specifies the location of the key encryption key in key vault.
  final KeyVaultKeyReference? keyEncryptionKey;
  /// Specifies whether the service will automatically rotate to the newest version of the key in the key vault.
  final bool? rotationToLatestKeyVersionEnabled;

  /// Creates a new [CacheEncryptionSettings].
  /// [keyEncryptionKey] Specifies the location of the key encryption key in key vault.
  /// [rotationToLatestKeyVersionEnabled] Specifies whether the service will automatically rotate to the newest version of the key in the key vault.
  CacheEncryptionSettings({
    this.keyEncryptionKey,
    this.rotationToLatestKeyVersionEnabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyEncryptionKey': ?keyEncryptionKey == null ? null : keyEncryptionKey!.toMap(),
      'rotationToLatestKeyVersionEnabled': ?rotationToLatestKeyVersionEnabled,
    };
  }

  factory CacheEncryptionSettings.fromMap(Map<String, dynamic> map) {
    return CacheEncryptionSettings(
      keyEncryptionKey: map['keyEncryptionKey'] == null ? null : KeyVaultKeyReference.fromMap((map['keyEncryptionKey'] as Map).cast<String, dynamic>()),
      rotationToLatestKeyVersionEnabled: map['rotationToLatestKeyVersionEnabled'] == null ? null : map['rotationToLatestKeyVersionEnabled'] as bool,
    );
  }
}

