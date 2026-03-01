// ignore_for_file: unused_element, unnecessary_cast

import 'key_vault_key_reference_response.dart';
import 'key_vault_secret_reference_response.dart';

/// Describes a Encryption Settings for a Disk
class DiskEncryptionSettingsResponse {
  /// Specifies the location of the disk encryption key, which is a Key Vault Secret.
  final KeyVaultSecretReferenceResponse? diskEncryptionKey;
  /// Specifies whether disk encryption should be enabled on the virtual machine.
  final bool? enabled;
  /// Specifies the location of the key encryption key in Key Vault.
  final KeyVaultKeyReferenceResponse? keyEncryptionKey;

  /// Creates a new [DiskEncryptionSettingsResponse].
  /// [diskEncryptionKey] Specifies the location of the disk encryption key, which is a Key Vault Secret.
  /// [enabled] Specifies whether disk encryption should be enabled on the virtual machine.
  /// [keyEncryptionKey] Specifies the location of the key encryption key in Key Vault.
  DiskEncryptionSettingsResponse({
    this.diskEncryptionKey,
    this.enabled,
    this.keyEncryptionKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskEncryptionKey': ?diskEncryptionKey == null ? null : diskEncryptionKey!.toMap(),
      'enabled': ?enabled,
      'keyEncryptionKey': ?keyEncryptionKey == null ? null : keyEncryptionKey!.toMap(),
    };
  }

  factory DiskEncryptionSettingsResponse.fromMap(Map<String, dynamic> map) {
    return DiskEncryptionSettingsResponse(
      diskEncryptionKey: map['diskEncryptionKey'] == null ? null : KeyVaultSecretReferenceResponse.fromMap((map['diskEncryptionKey'] as Map).cast<String, dynamic>()),
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      keyEncryptionKey: map['keyEncryptionKey'] == null ? null : KeyVaultKeyReferenceResponse.fromMap((map['keyEncryptionKey'] as Map).cast<String, dynamic>()),
    );
  }
}

