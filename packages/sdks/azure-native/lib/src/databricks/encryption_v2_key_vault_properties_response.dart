// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Key Vault input properties for encryption.
class EncryptionV2KeyVaultPropertiesResponse {
  /// The name of KeyVault key.
  final pulumi.Input<String> keyName;
  /// The Uri of KeyVault.
  final pulumi.Input<String> keyVaultUri;
  /// The version of KeyVault key.
  final pulumi.Input<String> keyVersion;

  /// Creates a new [EncryptionV2KeyVaultPropertiesResponse].
  /// [keyName] The name of KeyVault key.
  /// [keyVaultUri] The Uri of KeyVault.
  /// [keyVersion] The version of KeyVault key.
  const EncryptionV2KeyVaultPropertiesResponse({
    required this.keyName,
    required this.keyVaultUri,
    required this.keyVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyName': keyName,
      'keyVaultUri': keyVaultUri,
      'keyVersion': keyVersion,
    };
  }

  factory EncryptionV2KeyVaultPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionV2KeyVaultPropertiesResponse(
      keyName: pulumi.Input.fromValue(map['keyName'] as String),
      keyVaultUri: pulumi.Input.fromValue(map['keyVaultUri'] as String),
      keyVersion: pulumi.Input.fromValue(map['keyVersion'] as String),
    );
  }
}
