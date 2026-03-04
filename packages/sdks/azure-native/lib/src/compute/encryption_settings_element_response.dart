// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_and_key_reference_response.dart';
import 'key_vault_and_secret_reference_response.dart';

/// Encryption settings for one disk volume.
class EncryptionSettingsElementResponse {
  /// Key Vault Secret Url and vault id of the disk encryption key
  final pulumi.Input<KeyVaultAndSecretReferenceResponse>? diskEncryptionKey;

  /// Key Vault Key Url and vault id of the key encryption key. KeyEncryptionKey is optional and when provided is used to unwrap the disk encryption key.
  final pulumi.Input<KeyVaultAndKeyReferenceResponse>? keyEncryptionKey;

  /// Creates a new [EncryptionSettingsElementResponse].
  /// [diskEncryptionKey] Key Vault Secret Url and vault id of the disk encryption key
  /// [keyEncryptionKey] Key Vault Key Url and vault id of the key encryption key. KeyEncryptionKey is optional and when provided is used to unwrap the disk encryption key.
  EncryptionSettingsElementResponse({
    this.diskEncryptionKey,
    this.keyEncryptionKey,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskEncryptionKey':
          ?pulumi.Input.mapOptionalInputValue<
            KeyVaultAndSecretReferenceResponse,
            Map<String, dynamic>
          >(diskEncryptionKey, (value) => value.toMap()),
      'keyEncryptionKey':
          ?pulumi.Input.mapOptionalInputValue<
            KeyVaultAndKeyReferenceResponse,
            Map<String, dynamic>
          >(keyEncryptionKey, (value) => value.toMap()),
    };
  }

  factory EncryptionSettingsElementResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionSettingsElementResponse(
      diskEncryptionKey: (() {
        final guardedValue = map['diskEncryptionKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          KeyVaultAndSecretReferenceResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      keyEncryptionKey: (() {
        final guardedValue = map['keyEncryptionKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          KeyVaultAndKeyReferenceResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
