// ignore_for_file: unused_element, unnecessary_cast

import 'source_vault.dart';

/// Key Vault Key Url and vault id of KeK, KeK is optional and when provided is used to unwrap the encryptionKey
class KeyVaultAndKeyReference {
  /// Url pointing to a key or secret in KeyVault
  final String keyUrl;
  /// Resource id of the KeyVault containing the key or secret
  final SourceVault sourceVault;

  /// Creates a new [KeyVaultAndKeyReference].
  /// [keyUrl] Url pointing to a key or secret in KeyVault
  /// [sourceVault] Resource id of the KeyVault containing the key or secret
  KeyVaultAndKeyReference({
    required this.keyUrl,
    required this.sourceVault,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyUrl': keyUrl,
      'sourceVault': sourceVault.toMap(),
    };
  }

  factory KeyVaultAndKeyReference.fromMap(Map<String, dynamic> map) {
    return KeyVaultAndKeyReference(
      keyUrl: map['keyUrl'] as String,
      sourceVault: SourceVault.fromMap((map['sourceVault'] as Map).cast<String, dynamic>()),
    );
  }
}

