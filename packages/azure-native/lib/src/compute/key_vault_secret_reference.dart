// ignore_for_file: unused_element, unnecessary_cast

import 'sub_resource.dart';

/// Describes a reference to Key Vault Secret
class KeyVaultSecretReference {
  /// The URL referencing a secret in a Key Vault.
  final String secretUrl;
  /// The relative URL of the Key Vault containing the secret.
  final SubResource sourceVault;

  /// Creates a new [KeyVaultSecretReference].
  /// [secretUrl] The URL referencing a secret in a Key Vault.
  /// [sourceVault] The relative URL of the Key Vault containing the secret.
  KeyVaultSecretReference({
    required this.secretUrl,
    required this.sourceVault,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretUrl': secretUrl,
      'sourceVault': sourceVault.toMap(),
    };
  }

  factory KeyVaultSecretReference.fromMap(Map<String, dynamic> map) {
    return KeyVaultSecretReference(
      secretUrl: map['secretUrl'] as String,
      sourceVault: SubResource.fromMap((map['sourceVault'] as Map).cast<String, dynamic>()),
    );
  }
}

