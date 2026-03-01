// ignore_for_file: unused_element, unnecessary_cast

import 'source_vault_response.dart';

/// Key Vault Secret Url and vault id of the encryption key
class KeyVaultAndSecretReferenceResponse {
  /// Url pointing to a key or secret in KeyVault
  final String secretUrl;
  /// Resource id of the KeyVault containing the key or secret
  final SourceVaultResponse sourceVault;

  /// Creates a new [KeyVaultAndSecretReferenceResponse].
  /// [secretUrl] Url pointing to a key or secret in KeyVault
  /// [sourceVault] Resource id of the KeyVault containing the key or secret
  KeyVaultAndSecretReferenceResponse({
    required this.secretUrl,
    required this.sourceVault,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretUrl': secretUrl,
      'sourceVault': sourceVault.toMap(),
    };
  }

  factory KeyVaultAndSecretReferenceResponse.fromMap(Map<String, dynamic> map) {
    return KeyVaultAndSecretReferenceResponse(
      secretUrl: map['secretUrl'] as String,
      sourceVault: SourceVaultResponse.fromMap((map['sourceVault'] as Map).cast<String, dynamic>()),
    );
  }
}

