// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource.dart';

/// Describes a reference to Key Vault Secret
class KeyVaultSecretReference {
  /// The URL referencing a secret in a Key Vault.
  final pulumi.Input<String> secretUrl;
  /// The relative URL of the Key Vault containing the secret.
  final pulumi.Input<SubResource> sourceVault;

  /// Creates a new [KeyVaultSecretReference].
  /// [secretUrl] The URL referencing a secret in a Key Vault.
  /// [sourceVault] The relative URL of the Key Vault containing the secret.
  const KeyVaultSecretReference({
    required this.secretUrl,
    required this.sourceVault,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretUrl': secretUrl,
      'sourceVault': pulumi.Input.mapInputValue<SubResource, Map<String, dynamic>>(sourceVault, (value) => value.toMap()),
    };
  }

  factory KeyVaultSecretReference.fromMap(Map<String, dynamic> map) {
    return KeyVaultSecretReference(
      secretUrl: pulumi.Input.fromValue(map['secretUrl'] as String),
      sourceVault: pulumi.Input.fromValue(SubResource.fromMap((map['sourceVault']! as Map).cast<String, dynamic>())),
    );
  }
}
