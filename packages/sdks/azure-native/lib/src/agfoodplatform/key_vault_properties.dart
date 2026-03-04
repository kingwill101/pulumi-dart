// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of the key vault.
class KeyVaultProperties {
  /// Name of Key Vault key.
  final pulumi.Input<String> keyName;

  /// Uri of the key vault.
  final pulumi.Input<String> keyVaultUri;

  /// Version of Key Vault key.
  final pulumi.Input<String> keyVersion;

  /// Creates a new [KeyVaultProperties].
  /// [keyName] Name of Key Vault key.
  /// [keyVaultUri] Uri of the key vault.
  /// [keyVersion] Version of Key Vault key.
  KeyVaultProperties({
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

  factory KeyVaultProperties.fromMap(Map<String, dynamic> map) {
    return KeyVaultProperties(
      keyName: pulumi.Input.fromValue(map['keyName'] as String),
      keyVaultUri: pulumi.Input.fromValue(map['keyVaultUri'] as String),
      keyVersion: pulumi.Input.fromValue(map['keyVersion'] as String),
    );
  }
}
