// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_vault_response.dart';

/// Key Vault Secret Url and vault id of the encryption key
class KeyVaultAndSecretReferenceResponse {
  /// Url pointing to a key or secret in KeyVault
  final pulumi.Input<String> secretUrl;

  /// Resource id of the KeyVault containing the key or secret
  final pulumi.Input<SourceVaultResponse> sourceVault;

  /// Creates a new [KeyVaultAndSecretReferenceResponse].
  /// [secretUrl] Url pointing to a key or secret in KeyVault
  /// [sourceVault] Resource id of the KeyVault containing the key or secret
  KeyVaultAndSecretReferenceResponse({
    required this.secretUrl,
    required this.sourceVault,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'secretUrl': secretUrl,
      'sourceVault':
          pulumi.Input.mapInputValue<SourceVaultResponse, Map<String, dynamic>>(
            sourceVault,
            (value) => value.toMap(),
          ),
    };
  }

  factory KeyVaultAndSecretReferenceResponse.fromMap(Map<String, dynamic> map) {
    return KeyVaultAndSecretReferenceResponse(
      secretUrl: pulumi.Input.fromValue(map['secretUrl'] as String),
      sourceVault: pulumi.Input.fromValue(
        SourceVaultResponse.fromMap(
          (map['sourceVault']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
