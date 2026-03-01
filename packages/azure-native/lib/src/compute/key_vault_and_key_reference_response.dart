// ignore_for_file: unused_element, unnecessary_cast

import 'source_vault_response.dart';

/// Key Vault Key Url and vault id of KeK, KeK is optional and when provided is used to unwrap the encryptionKey
class KeyVaultAndKeyReferenceResponse {
  /// Url pointing to a key or secret in KeyVault
  final String keyUrl;
  /// Resource id of the KeyVault containing the key or secret
  final SourceVaultResponse sourceVault;

  /// Creates a new [KeyVaultAndKeyReferenceResponse].
  /// [keyUrl] Url pointing to a key or secret in KeyVault
  /// [sourceVault] Resource id of the KeyVault containing the key or secret
  KeyVaultAndKeyReferenceResponse({
    required this.keyUrl,
    required this.sourceVault,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyUrl': keyUrl,
      'sourceVault': sourceVault.toMap(),
    };
  }

  factory KeyVaultAndKeyReferenceResponse.fromMap(Map<String, dynamic> map) {
    return KeyVaultAndKeyReferenceResponse(
      keyUrl: map['keyUrl'] as String,
      sourceVault: SourceVaultResponse.fromMap((map['sourceVault'] as Map).cast<String, dynamic>()),
    );
  }
}

