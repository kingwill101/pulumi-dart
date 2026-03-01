// ignore_for_file: unused_element, unnecessary_cast

import 'asymmetric_encrypted_secret_response.dart';

/// Holds device secret either as a KeyVault reference or as an encrypted value.
class SecretResponse {
  /// Encrypted (using device public key) secret value.
  final AsymmetricEncryptedSecretResponse? encryptedSecret;
  /// Id of the Key-Vault where secret is stored (ex: secrets/AuthClientSecret/82ef4346187a4033a10d629cde07d740).
  final String? keyVaultId;

  /// Creates a new [SecretResponse].
  /// [encryptedSecret] Encrypted (using device public key) secret value.
  /// [keyVaultId] Id of the Key-Vault where secret is stored (ex: secrets/AuthClientSecret/82ef4346187a4033a10d629cde07d740).
  SecretResponse({
    this.encryptedSecret,
    this.keyVaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptedSecret': ?encryptedSecret == null ? null : encryptedSecret!.toMap(),
      'keyVaultId': ?keyVaultId,
    };
  }

  factory SecretResponse.fromMap(Map<String, dynamic> map) {
    return SecretResponse(
      encryptedSecret: map['encryptedSecret'] == null ? null : AsymmetricEncryptedSecretResponse.fromMap((map['encryptedSecret'] as Map).cast<String, dynamic>()),
      keyVaultId: map['keyVaultId'] == null ? null : map['keyVaultId'] as String,
    );
  }
}

