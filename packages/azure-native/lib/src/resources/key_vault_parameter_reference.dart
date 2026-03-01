// ignore_for_file: unused_element, unnecessary_cast

import 'key_vault_reference.dart';

/// Azure Key Vault parameter reference.
class KeyVaultParameterReference {
  /// Azure Key Vault reference.
  final KeyVaultReference keyVault;
  /// Azure Key Vault secret name.
  final String secretName;
  /// Azure Key Vault secret version.
  final String? secretVersion;

  /// Creates a new [KeyVaultParameterReference].
  /// [keyVault] Azure Key Vault reference.
  /// [secretName] Azure Key Vault secret name.
  /// [secretVersion] Azure Key Vault secret version.
  KeyVaultParameterReference({
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

  factory KeyVaultParameterReference.fromMap(Map<String, dynamic> map) {
    return KeyVaultParameterReference(
      keyVault: KeyVaultReference.fromMap((map['keyVault'] as Map).cast<String, dynamic>()),
      secretName: map['secretName'] as String,
      secretVersion: map['secretVersion'] == null ? null : map['secretVersion'] as String,
    );
  }
}

