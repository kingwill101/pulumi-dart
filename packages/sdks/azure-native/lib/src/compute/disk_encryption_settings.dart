// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_key_reference.dart';
import 'key_vault_secret_reference.dart';

/// Describes a Encryption Settings for a Disk
class DiskEncryptionSettings {
  /// Specifies the location of the disk encryption key, which is a Key Vault Secret.
  final pulumi.Input<KeyVaultSecretReference>? diskEncryptionKey;
  /// Specifies whether disk encryption should be enabled on the virtual machine.
  final pulumi.Input<bool>? enabled;
  /// Specifies the location of the key encryption key in Key Vault.
  final pulumi.Input<KeyVaultKeyReference>? keyEncryptionKey;

  /// Creates a new [DiskEncryptionSettings].
  /// [diskEncryptionKey] Specifies the location of the disk encryption key, which is a Key Vault Secret.
  /// [enabled] Specifies whether disk encryption should be enabled on the virtual machine.
  /// [keyEncryptionKey] Specifies the location of the key encryption key in Key Vault.
  DiskEncryptionSettings({
    this.diskEncryptionKey,
    this.enabled,
    this.keyEncryptionKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskEncryptionKey': ?pulumi.Input.mapOptionalInputValue<KeyVaultSecretReference, Map<String, dynamic>>(diskEncryptionKey, (value) => value.toMap()),
      'enabled': ?enabled,
      'keyEncryptionKey': ?pulumi.Input.mapOptionalInputValue<KeyVaultKeyReference, Map<String, dynamic>>(keyEncryptionKey, (value) => value.toMap()),
    };
  }

  factory DiskEncryptionSettings.fromMap(Map<String, dynamic> map) {
    return DiskEncryptionSettings(
      diskEncryptionKey: map['diskEncryptionKey'] == null ? null : (KeyVaultSecretReference.fromMap((map['diskEncryptionKey']! as Map).cast<String, dynamic>())).input(),
      enabled: map['enabled'] == null ? null : (map['enabled']! as bool).input(),
      keyEncryptionKey: map['keyEncryptionKey'] == null ? null : (KeyVaultKeyReference.fromMap((map['keyEncryptionKey']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

