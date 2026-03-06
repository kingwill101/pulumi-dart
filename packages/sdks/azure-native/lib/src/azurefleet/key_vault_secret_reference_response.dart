// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource_response.dart';

/// Describes a reference to Key Vault Secret
class KeyVaultSecretReferenceResponse {
  /// The URL referencing a secret in a Key Vault.
  final pulumi.Input<String> secretUrl;
  /// The relative URL of the Key Vault containing the secret.
  final pulumi.Input<SubResourceResponse> sourceVault;

  /// Creates a new [KeyVaultSecretReferenceResponse].
  /// [secretUrl] The URL referencing a secret in a Key Vault.
  /// [sourceVault] The relative URL of the Key Vault containing the secret.
  const KeyVaultSecretReferenceResponse({
    required this.secretUrl,
    required this.sourceVault,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretUrl': secretUrl,
      'sourceVault': pulumi.Input.mapInputValue<SubResourceResponse, Map<String, dynamic>>(sourceVault, (value) => value.toMap()),
    };
  }

  factory KeyVaultSecretReferenceResponse.fromMap(Map<String, dynamic> map) {
    return KeyVaultSecretReferenceResponse(
      secretUrl: pulumi.Input.fromValue(map['secretUrl'] as String),
      sourceVault: pulumi.Input.fromValue(SubResourceResponse.fromMap((map['sourceVault']! as Map).cast<String, dynamic>())),
    );
  }
}

