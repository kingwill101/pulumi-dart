// ignore_for_file: unused_element, unnecessary_cast

import 'sub_resource_response.dart';

/// Describes a reference to Key Vault Key
class KeyVaultKeyReferenceResponse {
  /// The URL referencing a key encryption key in Key Vault.
  final String keyUrl;
  /// The relative URL of the Key Vault containing the key.
  final SubResourceResponse sourceVault;

  /// Creates a new [KeyVaultKeyReferenceResponse].
  /// [keyUrl] The URL referencing a key encryption key in Key Vault.
  /// [sourceVault] The relative URL of the Key Vault containing the key.
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
      sourceVault: SubResourceResponse.fromMap((map['sourceVault'] as Map).cast<String, dynamic>()),
    );
  }
}

