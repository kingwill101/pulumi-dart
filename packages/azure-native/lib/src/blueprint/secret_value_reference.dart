// ignore_for_file: unused_element, unnecessary_cast

import 'key_vault_reference.dart';

/// Reference to a Key Vault secret.
class SecretValueReference {
  /// Specifies the reference to a given Azure Key Vault.
  final KeyVaultReference keyVault;
  /// Name of the secret.
  final String secretName;
  /// The version of the secret to use. If left blank, the latest version of the secret is used.
  final String? secretVersion;

  /// Creates a new [SecretValueReference].
  /// [keyVault] Specifies the reference to a given Azure Key Vault.
  /// [secretName] Name of the secret.
  /// [secretVersion] The version of the secret to use. If left blank, the latest version of the secret is used.
  SecretValueReference({
    required this.keyVault,
    required this.secretName,
    this.secretVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVault': keyVault.toMap(),
      'secretName': secretName,
      'secretVersion': ?secretVersion,
    };
  }

  factory SecretValueReference.fromMap(Map<String, dynamic> map) {
    return SecretValueReference(
      keyVault: KeyVaultReference.fromMap((map['keyVault'] as Map).cast<String, dynamic>()),
      secretName: map['secretName'] as String,
      secretVersion: map['secretVersion'] == null ? null : map['secretVersion'] as String,
    );
  }
}

