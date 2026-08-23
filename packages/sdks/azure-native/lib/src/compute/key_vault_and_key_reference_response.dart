// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'source_vault_response.dart';

/// Key Vault Key Url and vault id of KeK, KeK is optional and when provided is used to unwrap the encryptionKey
class KeyVaultAndKeyReferenceResponse {
  /// Url pointing to a key or secret in KeyVault
  final pulumi.Input<String> keyUrl;
  /// Resource id of the KeyVault containing the key or secret
  final pulumi.Input<SourceVaultResponse> sourceVault;

  /// Creates a new [KeyVaultAndKeyReferenceResponse].
  /// [keyUrl] Url pointing to a key or secret in KeyVault
  /// [sourceVault] Resource id of the KeyVault containing the key or secret
  const KeyVaultAndKeyReferenceResponse({
    required this.keyUrl,
    required this.sourceVault,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyUrl': keyUrl,
      'sourceVault': pulumi.Input.mapInputValue<SourceVaultResponse, Map<String, dynamic>>(sourceVault, (value) => value.toMap()),
    };
  }

  factory KeyVaultAndKeyReferenceResponse.fromMap(Map<String, dynamic> map) {
    return KeyVaultAndKeyReferenceResponse(
      keyUrl: pulumi.Input.fromValue(map['keyUrl'] as String),
      sourceVault: pulumi.Input.fromValue(SourceVaultResponse.fromMap((map['sourceVault']! as Map).cast<String, dynamic>())),
    );
  }
}
