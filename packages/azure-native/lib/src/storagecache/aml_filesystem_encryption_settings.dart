// ignore_for_file: unused_element, unnecessary_cast

import 'key_vault_key_reference.dart';

/// AML file system encryption settings.
class AmlFilesystemEncryptionSettings {
  /// Specifies the location of the encryption key in Key Vault.
  final KeyVaultKeyReference? keyEncryptionKey;

  /// Creates a new [AmlFilesystemEncryptionSettings].
  /// [keyEncryptionKey] Specifies the location of the encryption key in Key Vault.
  AmlFilesystemEncryptionSettings({
    this.keyEncryptionKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyEncryptionKey': ?keyEncryptionKey == null ? null : keyEncryptionKey!.toMap(),
    };
  }

  factory AmlFilesystemEncryptionSettings.fromMap(Map<String, dynamic> map) {
    return AmlFilesystemEncryptionSettings(
      keyEncryptionKey: map['keyEncryptionKey'] == null ? null : KeyVaultKeyReference.fromMap((map['keyEncryptionKey'] as Map).cast<String, dynamic>()),
    );
  }
}

