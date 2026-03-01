// ignore_for_file: unused_element, unnecessary_cast

import 'key_vault_and_key_reference.dart';
import 'key_vault_and_secret_reference.dart';

/// Encryption settings for one disk volume.
class EncryptionSettingsElement {
  /// Key Vault Secret Url and vault id of the disk encryption key
  final KeyVaultAndSecretReference? diskEncryptionKey;
  /// Key Vault Key Url and vault id of the key encryption key. KeyEncryptionKey is optional and when provided is used to unwrap the disk encryption key.
  final KeyVaultAndKeyReference? keyEncryptionKey;

  /// Creates a new [EncryptionSettingsElement].
  /// [diskEncryptionKey] Key Vault Secret Url and vault id of the disk encryption key
  /// [keyEncryptionKey] Key Vault Key Url and vault id of the key encryption key. KeyEncryptionKey is optional and when provided is used to unwrap the disk encryption key.
  EncryptionSettingsElement({
    this.diskEncryptionKey,
    this.keyEncryptionKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskEncryptionKey': ?diskEncryptionKey == null ? null : diskEncryptionKey!.toMap(),
      'keyEncryptionKey': ?keyEncryptionKey == null ? null : keyEncryptionKey!.toMap(),
    };
  }

  factory EncryptionSettingsElement.fromMap(Map<String, dynamic> map) {
    return EncryptionSettingsElement(
      diskEncryptionKey: map['diskEncryptionKey'] == null ? null : KeyVaultAndSecretReference.fromMap((map['diskEncryptionKey'] as Map).cast<String, dynamic>()),
      keyEncryptionKey: map['keyEncryptionKey'] == null ? null : KeyVaultAndKeyReference.fromMap((map['keyEncryptionKey'] as Map).cast<String, dynamic>()),
    );
  }
}

