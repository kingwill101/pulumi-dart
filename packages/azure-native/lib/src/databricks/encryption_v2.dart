// ignore_for_file: unused_element, unnecessary_cast

import 'encryption_v2_key_vault_properties.dart';

/// The object that contains details of encryption used on the workspace.
class EncryptionV2 {
  /// The encryption keySource (provider). Possible values (case-insensitive):  Microsoft.Keyvault
  final String keySource;
  /// Key Vault input properties for encryption.
  final EncryptionV2KeyVaultProperties? keyVaultProperties;

  /// Creates a new [EncryptionV2].
  /// [keySource] The encryption keySource (provider). Possible values (case-insensitive):  Microsoft.Keyvault
  /// [keyVaultProperties] Key Vault input properties for encryption.
  EncryptionV2({
    required this.keySource,
    this.keyVaultProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keySource': keySource,
      'keyVaultProperties': ?keyVaultProperties == null ? null : keyVaultProperties!.toMap(),
    };
  }

  factory EncryptionV2.fromMap(Map<String, dynamic> map) {
    return EncryptionV2(
      keySource: map['keySource'] as String,
      keyVaultProperties: map['keyVaultProperties'] == null ? null : EncryptionV2KeyVaultProperties.fromMap((map['keyVaultProperties'] as Map).cast<String, dynamic>()),
    );
  }
}

