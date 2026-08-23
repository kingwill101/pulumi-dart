// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// For Key Vault Key references
class KeyVaultPropertiesResponse {
  /// The Key Name in Key Vault
  final pulumi.Input<String> keyName;
  /// The Key Vault URI
  final pulumi.Input<String> keyVaultUri;
  /// The Key Version in Key Vault
  final pulumi.Input<String>? keyVersion;

  /// Creates a new [KeyVaultPropertiesResponse].
  /// [keyName] The Key Name in Key Vault
  /// [keyVaultUri] The Key Vault URI
  /// [keyVersion] The Key Version in Key Vault
  const KeyVaultPropertiesResponse({
    required this.keyName,
    required this.keyVaultUri,
    this.keyVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyName': keyName,
      'keyVaultUri': keyVaultUri,
      'keyVersion': ?keyVersion,
    };
  }

  factory KeyVaultPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return KeyVaultPropertiesResponse(
      keyName: pulumi.Input.fromValue(map['keyName'] as String),
      keyVaultUri: pulumi.Input.fromValue(map['keyVaultUri'] as String),
      keyVersion: (() { final guardedValue = map['keyVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
