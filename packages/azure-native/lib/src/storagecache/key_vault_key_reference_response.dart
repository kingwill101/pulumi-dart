// ignore_for_file: unused_element, unnecessary_cast

import 'key_vault_key_reference_response_source_vault.dart';

/// Describes a reference to key vault key.
class KeyVaultKeyReferenceResponse {
  /// The URL referencing a key encryption key in key vault.
  final String keyUrl;
  /// Describes a resource Id to source key vault.
  final KeyVaultKeyReferenceResponseSourceVault sourceVault;

  /// Creates a new [KeyVaultKeyReferenceResponse].
  /// [keyUrl] The URL referencing a key encryption key in key vault.
  /// [sourceVault] Describes a resource Id to source key vault.
  KeyVaultKeyReferenceResponse({
    required this.keyUrl,
    required this.sourceVault,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyUrl': keyUrl,
      'sourceVault': sourceVault.toMap(),
    };
  }

  factory KeyVaultKeyReferenceResponse.fromMap(Map<String, dynamic> map) {
    return KeyVaultKeyReferenceResponse(
      keyUrl: map['keyUrl'] as String,
      sourceVault: KeyVaultKeyReferenceResponseSourceVault.fromMap((map['sourceVault'] as Map).cast<String, dynamic>()),
    );
  }
}

