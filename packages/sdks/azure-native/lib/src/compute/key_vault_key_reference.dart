// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource.dart';

/// Describes a reference to Key Vault Key
class KeyVaultKeyReference {
  /// The URL referencing a key encryption key in Key Vault.
  final pulumi.Input<String> keyUrl;
  /// The relative URL of the Key Vault containing the key.
  final pulumi.Input<SubResource> sourceVault;

  /// Creates a new [KeyVaultKeyReference].
  /// [keyUrl] The URL referencing a key encryption key in Key Vault.
  /// [sourceVault] The relative URL of the Key Vault containing the key.
  const KeyVaultKeyReference({
    required this.keyUrl,
    required this.sourceVault,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyUrl': keyUrl,
      'sourceVault': pulumi.Input.mapInputValue<SubResource, Map<String, dynamic>>(sourceVault, (value) => value.toMap()),
    };
  }

  factory KeyVaultKeyReference.fromMap(Map<String, dynamic> map) {
    return KeyVaultKeyReference(
      keyUrl: pulumi.Input.fromValue(map['keyUrl'] as String),
      sourceVault: pulumi.Input.fromValue(SubResource.fromMap((map['sourceVault']! as Map).cast<String, dynamic>())),
    );
  }
}

