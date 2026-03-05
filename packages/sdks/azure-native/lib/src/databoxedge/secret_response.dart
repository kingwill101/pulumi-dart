// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'asymmetric_encrypted_secret_response.dart';

/// Holds device secret either as a KeyVault reference or as an encrypted value.
class SecretResponse {
  /// Encrypted (using device public key) secret value.
  final pulumi.Input<AsymmetricEncryptedSecretResponse>? encryptedSecret;
  /// Id of the Key-Vault where secret is stored (ex: secrets/AuthClientSecret/82ef4346187a4033a10d629cde07d740).
  final pulumi.Input<String>? keyVaultId;

  /// Creates a new [SecretResponse].
  /// [encryptedSecret] Encrypted (using device public key) secret value.
  /// [keyVaultId] Id of the Key-Vault where secret is stored (ex: secrets/AuthClientSecret/82ef4346187a4033a10d629cde07d740).
  SecretResponse({
    this.encryptedSecret,
    this.keyVaultId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptedSecret': ?pulumi.Input.mapOptionalInputValue<AsymmetricEncryptedSecretResponse, Map<String, dynamic>>(encryptedSecret, (value) => value.toMap()),
      'keyVaultId': ?keyVaultId,
    };
  }

  factory SecretResponse.fromMap(Map<String, dynamic> map) {
    return SecretResponse(
      encryptedSecret: (() { final guardedValue = map['encryptedSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AsymmetricEncryptedSecretResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      keyVaultId: (() { final guardedValue = map['keyVaultId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

