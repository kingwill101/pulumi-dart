// ignore_for_file: unused_element, unnecessary_cast

import 'sub_resource_response.dart';

/// Describes a reference to Key Vault Secret
class KeyVaultSecretReferenceResponse {
  /// The URL referencing a secret in a Key Vault.
  final String secretUrl;
  /// The relative URL of the Key Vault containing the secret.
  final SubResourceResponse sourceVault;

  /// Creates a new [KeyVaultSecretReferenceResponse].
  /// [secretUrl] The URL referencing a secret in a Key Vault.
  /// [sourceVault] The relative URL of the Key Vault containing the secret.
  KeyVaultSecretReferenceResponse({
    required this.secretUrl,
    required this.sourceVault,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretUrl': secretUrl,
      'sourceVault': sourceVault.toMap(),
    };
  }

  factory KeyVaultSecretReferenceResponse.fromMap(Map<String, dynamic> map) {
    return KeyVaultSecretReferenceResponse(
      secretUrl: map['secretUrl'] as String,
      sourceVault: SubResourceResponse.fromMap((map['sourceVault'] as Map).cast<String, dynamic>()),
    );
  }
}

