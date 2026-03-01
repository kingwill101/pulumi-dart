// ignore_for_file: unused_element, unnecessary_cast

import 'key_vault_and_key_reference_response.dart';
import 'key_vault_and_secret_reference_response.dart';

/// Encryption settings for one disk volume.
class EncryptionSettingsElementResponse {
  /// Key Vault Secret Url and vault id of the disk encryption key
  final KeyVaultAndSecretReferenceResponse? diskEncryptionKey;
  /// Key Vault Key Url and vault id of the key encryption key. KeyEncryptionKey is optional and when provided is used to unwrap the disk encryption key.
  final KeyVaultAndKeyReferenceResponse? keyEncryptionKey;

  /// Creates a new [EncryptionSettingsElementResponse].
  /// [diskEncryptionKey] Key Vault Secret Url and vault id of the disk encryption key
  /// [keyEncryptionKey] Key Vault Key Url and vault id of the key encryption key. KeyEncryptionKey is optional and when provided is used to unwrap the disk encryption key.
  EncryptionSettingsElementResponse({
    this.diskEncryptionKey,
    this.keyEncryptionKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskEncryptionKey': ?diskEncryptionKey == null ? null : diskEncryptionKey!.toMap(),
      'keyEncryptionKey': ?keyEncryptionKey == null ? null : keyEncryptionKey!.toMap(),
    };
  }

  factory EncryptionSettingsElementResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionSettingsElementResponse(
      diskEncryptionKey: map['diskEncryptionKey'] == null ? null : KeyVaultAndSecretReferenceResponse.fromMap((map['diskEncryptionKey'] as Map).cast<String, dynamic>()),
      keyEncryptionKey: map['keyEncryptionKey'] == null ? null : KeyVaultAndKeyReferenceResponse.fromMap((map['keyEncryptionKey'] as Map).cast<String, dynamic>()),
    );
  }
}

