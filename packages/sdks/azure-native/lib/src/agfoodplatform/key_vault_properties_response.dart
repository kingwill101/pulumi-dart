// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of the key vault.
class KeyVaultPropertiesResponse {
  /// Name of Key Vault key.
  final pulumi.Input<String> keyName;

  /// Uri of the key vault.
  final pulumi.Input<String> keyVaultUri;

  /// Version of Key Vault key.
  final pulumi.Input<String> keyVersion;

  /// Creates a new [KeyVaultPropertiesResponse].
  /// [keyName] Name of Key Vault key.
  /// [keyVaultUri] Uri of the key vault.
  /// [keyVersion] Version of Key Vault key.
  KeyVaultPropertiesResponse({
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

  factory KeyVaultPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return KeyVaultPropertiesResponse(
      keyName: pulumi.Input.fromValue(map['keyName'] as String),
      keyVaultUri: pulumi.Input.fromValue(map['keyVaultUri'] as String),
      keyVersion: pulumi.Input.fromValue(map['keyVersion'] as String),
    );
  }
}
