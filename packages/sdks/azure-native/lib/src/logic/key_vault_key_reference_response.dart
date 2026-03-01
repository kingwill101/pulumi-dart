// ignore_for_file: unused_element, unnecessary_cast

import 'key_vault_key_reference_response_key_vault.dart';

/// The reference to the key vault key.
class KeyVaultKeyReferenceResponse {
  /// The private key name in key vault.
  final String keyName;
  /// The key vault reference.
  final KeyVaultKeyReferenceResponseKeyVault keyVault;
  /// The private key version in key vault.
  final String? keyVersion;

  /// Creates a new [KeyVaultKeyReferenceResponse].
  /// [keyName] The private key name in key vault.
  /// [keyVault] The key vault reference.
  /// [keyVersion] The private key version in key vault.
  KeyVaultKeyReferenceResponse({
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

  factory KeyVaultKeyReferenceResponse.fromMap(Map<String, dynamic> map) {
    return KeyVaultKeyReferenceResponse(
      keyName: map['keyName'] as String,
      keyVault: KeyVaultKeyReferenceResponseKeyVault.fromMap((map['keyVault'] as Map).cast<String, dynamic>()),
      keyVersion: map['keyVersion'] == null ? null : map['keyVersion'] as String,
    );
  }
}

