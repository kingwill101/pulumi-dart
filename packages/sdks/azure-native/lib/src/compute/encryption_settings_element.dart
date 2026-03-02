// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_and_key_reference.dart';
import 'key_vault_and_secret_reference.dart';

/// Encryption settings for one disk volume.
class EncryptionSettingsElement {
  /// Key Vault Secret Url and vault id of the disk encryption key
  final pulumi.Input<KeyVaultAndSecretReference>? diskEncryptionKey;
  /// Key Vault Key Url and vault id of the key encryption key. KeyEncryptionKey is optional and when provided is used to unwrap the disk encryption key.
  final pulumi.Input<KeyVaultAndKeyReference>? keyEncryptionKey;

  /// Creates a new [EncryptionSettingsElement].
  /// [diskEncryptionKey] Key Vault Secret Url and vault id of the disk encryption key
  /// [keyEncryptionKey] Key Vault Key Url and vault id of the key encryption key. KeyEncryptionKey is optional and when provided is used to unwrap the disk encryption key.
  EncryptionSettingsElement({
    this.diskEncryptionKey,
    this.keyEncryptionKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskEncryptionKey': ?pulumi.Input.mapOptionalInputValue<KeyVaultAndSecretReference, Map<String, dynamic>>(diskEncryptionKey, (value) => value.toMap()),
      'keyEncryptionKey': ?pulumi.Input.mapOptionalInputValue<KeyVaultAndKeyReference, Map<String, dynamic>>(keyEncryptionKey, (value) => value.toMap()),
    };
  }

  factory EncryptionSettingsElement.fromMap(Map<String, dynamic> map) {
    return EncryptionSettingsElement(
      diskEncryptionKey: map['diskEncryptionKey'] == null ? null : (KeyVaultAndSecretReference.fromMap((map['diskEncryptionKey'] as Map).cast<String, dynamic>())).input(),
      keyEncryptionKey: map['keyEncryptionKey'] == null ? null : (KeyVaultAndKeyReference.fromMap((map['keyEncryptionKey'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

