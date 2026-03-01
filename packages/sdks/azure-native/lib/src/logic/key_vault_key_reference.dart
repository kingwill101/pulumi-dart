// ignore_for_file: unused_element, unnecessary_cast

import 'key_vault_key_reference_key_vault.dart';

/// The reference to the key vault key.
class KeyVaultKeyReference {
  /// The private key name in key vault.
  final String keyName;
  /// The key vault reference.
  final KeyVaultKeyReferenceKeyVault keyVault;
  /// The private key version in key vault.
  final String? keyVersion;

  /// Creates a new [KeyVaultKeyReference].
  /// [keyName] The private key name in key vault.
  /// [keyVault] The key vault reference.
  /// [keyVersion] The private key version in key vault.
  KeyVaultKeyReference({
    required this.keyName,
    required this.keyVault,
    this.keyVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyName': keyName,
      'keyVault': keyVault.toMap(),
      'keyVersion': ?keyVersion,
    };
  }

  factory KeyVaultKeyReference.fromMap(Map<String, dynamic> map) {
    return KeyVaultKeyReference(
      keyName: map['keyName'] as String,
      keyVault: KeyVaultKeyReferenceKeyVault.fromMap((map['keyVault'] as Map).cast<String, dynamic>()),
      keyVersion: map['keyVersion'] == null ? null : map['keyVersion'] as String,
    );
  }
}

