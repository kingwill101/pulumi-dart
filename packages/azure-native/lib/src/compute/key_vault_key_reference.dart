// ignore_for_file: unused_element, unnecessary_cast

import 'sub_resource.dart';

/// Describes a reference to Key Vault Key
class KeyVaultKeyReference {
  /// The URL referencing a key encryption key in Key Vault.
  final String keyUrl;
  /// The relative URL of the Key Vault containing the key.
  final SubResource sourceVault;

  /// Creates a new [KeyVaultKeyReference].
  /// [keyUrl] The URL referencing a key encryption key in Key Vault.
  /// [sourceVault] The relative URL of the Key Vault containing the key.
  KeyVaultKeyReference({
    required this.keyUrl,
    required this.sourceVault,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyUrl': keyUrl,
      'sourceVault': sourceVault.toMap(),
    };
  }

  factory KeyVaultKeyReference.fromMap(Map<String, dynamic> map) {
    return KeyVaultKeyReference(
      keyUrl: map['keyUrl'] as String,
      sourceVault: SubResource.fromMap((map['sourceVault'] as Map).cast<String, dynamic>()),
    );
  }
}

