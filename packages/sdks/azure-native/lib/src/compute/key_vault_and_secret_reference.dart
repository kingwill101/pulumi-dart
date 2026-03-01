// ignore_for_file: unused_element, unnecessary_cast

import 'source_vault.dart';

/// Key Vault Secret Url and vault id of the encryption key
class KeyVaultAndSecretReference {
  /// Url pointing to a key or secret in KeyVault
  final String secretUrl;
  /// Resource id of the KeyVault containing the key or secret
  final SourceVault sourceVault;

  /// Creates a new [KeyVaultAndSecretReference].
  /// [secretUrl] Url pointing to a key or secret in KeyVault
  /// [sourceVault] Resource id of the KeyVault containing the key or secret
  KeyVaultAndSecretReference({
    required this.secretUrl,
    required this.sourceVault,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretUrl': secretUrl,
      'sourceVault': sourceVault.toMap(),
    };
  }

  factory KeyVaultAndSecretReference.fromMap(Map<String, dynamic> map) {
    return KeyVaultAndSecretReference(
      secretUrl: map['secretUrl'] as String,
      sourceVault: SourceVault.fromMap((map['sourceVault'] as Map).cast<String, dynamic>()),
    );
  }
}

