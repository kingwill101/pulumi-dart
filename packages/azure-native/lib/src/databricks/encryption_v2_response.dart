// ignore_for_file: unused_element, unnecessary_cast

import 'encryption_v2_response_key_vault_properties.dart';

/// The object that contains details of encryption used on the workspace.
class EncryptionV2Response {
  /// The encryption keySource (provider). Possible values (case-insensitive):  Microsoft.Keyvault
  final String keySource;
  /// Key Vault input properties for encryption.
  final EncryptionV2ResponseKeyVaultProperties? keyVaultProperties;

  /// Creates a new [EncryptionV2Response].
  /// [keySource] The encryption keySource (provider). Possible values (case-insensitive):  Microsoft.Keyvault
  /// [keyVaultProperties] Key Vault input properties for encryption.
  EncryptionV2Response({
    required this.keySource,
    this.keyVaultProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keySource': keySource,
      'keyVaultProperties': ?keyVaultProperties == null ? null : keyVaultProperties!.toMap(),
    };
  }

  factory EncryptionV2Response.fromMap(Map<String, dynamic> map) {
    return EncryptionV2Response(
      keySource: map['keySource'] as String,
      keyVaultProperties: map['keyVaultProperties'] == null ? null : EncryptionV2ResponseKeyVaultProperties.fromMap((map['keyVaultProperties'] as Map).cast<String, dynamic>()),
    );
  }
}

