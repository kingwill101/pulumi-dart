// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'sub_resource_response.dart';

/// Describes a reference to Key Vault Key
class KeyVaultKeyReferenceResponse {
  /// The URL referencing a key encryption key in Key Vault.
  final pulumi.Input<String> keyUrl;

  /// The relative URL of the Key Vault containing the key.
  final pulumi.Input<SubResourceResponse> sourceVault;

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
      'sourceVault':
          pulumi.Input.mapInputValue<SubResourceResponse, Map<String, dynamic>>(
            sourceVault,
            (value) => value.toMap(),
          ),
    };
  }

  factory KeyVaultKeyReferenceResponse.fromMap(Map<String, dynamic> map) {
    return KeyVaultKeyReferenceResponse(
      keyUrl: pulumi.Input.fromValue(map['keyUrl'] as String),
      sourceVault: pulumi.Input.fromValue(
        SubResourceResponse.fromMap(
          (map['sourceVault']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
