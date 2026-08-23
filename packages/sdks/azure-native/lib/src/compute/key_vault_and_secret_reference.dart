// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_vault.dart';

/// Key Vault Secret Url and vault id of the encryption key
class KeyVaultAndSecretReference {
  /// Url pointing to a key or secret in KeyVault
  final pulumi.Input<String> secretUrl;
  /// Resource id of the KeyVault containing the key or secret
  final pulumi.Input<SourceVault> sourceVault;

  /// Creates a new [KeyVaultAndSecretReference].
  /// [secretUrl] Url pointing to a key or secret in KeyVault
  /// [sourceVault] Resource id of the KeyVault containing the key or secret
  const KeyVaultAndSecretReference({
    required this.secretUrl,
    required this.sourceVault,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretUrl': secretUrl,
      'sourceVault': pulumi.Input.mapInputValue<SourceVault, Map<String, dynamic>>(sourceVault, (value) => value.toMap()),
    };
  }

  factory KeyVaultAndSecretReference.fromMap(Map<String, dynamic> map) {
    return KeyVaultAndSecretReference(
      secretUrl: pulumi.Input.fromValue(map['secretUrl'] as String),
      sourceVault: pulumi.Input.fromValue(SourceVault.fromMap((map['sourceVault']! as Map).cast<String, dynamic>())),
    );
  }
}
