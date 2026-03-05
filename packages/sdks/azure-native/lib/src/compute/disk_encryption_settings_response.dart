// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_key_reference_response.dart';
import 'key_vault_secret_reference_response.dart';

/// Describes a Encryption Settings for a Disk
class DiskEncryptionSettingsResponse {
  /// Specifies the location of the disk encryption key, which is a Key Vault Secret.
  final pulumi.Input<KeyVaultSecretReferenceResponse>? diskEncryptionKey;
  /// Specifies whether disk encryption should be enabled on the virtual machine.
  final pulumi.Input<bool>? enabled;
  /// Specifies the location of the key encryption key in Key Vault.
  final pulumi.Input<KeyVaultKeyReferenceResponse>? keyEncryptionKey;

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
      'diskEncryptionKey': ?pulumi.Input.mapOptionalInputValue<KeyVaultSecretReferenceResponse, Map<String, dynamic>>(diskEncryptionKey, (value) => value.toMap()),
      'enabled': ?enabled,
      'keyEncryptionKey': ?pulumi.Input.mapOptionalInputValue<KeyVaultKeyReferenceResponse, Map<String, dynamic>>(keyEncryptionKey, (value) => value.toMap()),
    };
  }

  factory DiskEncryptionSettingsResponse.fromMap(Map<String, dynamic> map) {
    return DiskEncryptionSettingsResponse(
      diskEncryptionKey: (() { final guardedValue = map['diskEncryptionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KeyVaultSecretReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      keyEncryptionKey: (() { final guardedValue = map['keyEncryptionKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KeyVaultKeyReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

