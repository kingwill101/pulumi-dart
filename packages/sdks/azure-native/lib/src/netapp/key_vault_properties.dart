// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of key vault.
class KeyVaultProperties {
  /// The name of KeyVault key.
  final pulumi.Input<String> keyName;
  /// The resource ID of KeyVault.
  final pulumi.Input<String>? keyVaultResourceId;
  /// The Uri of KeyVault.
  final pulumi.Input<String> keyVaultUri;

  /// Creates a new [KeyVaultProperties].
  /// [keyName] The name of KeyVault key.
  /// [keyVaultResourceId] The resource ID of KeyVault.
  /// [keyVaultUri] The Uri of KeyVault.
  KeyVaultProperties({
    required this.keyName,
    this.keyVaultResourceId,
    required this.keyVaultUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyName': keyName,
      'keyVaultResourceId': ?keyVaultResourceId,
      'keyVaultUri': keyVaultUri,
    };
  }

  factory KeyVaultProperties.fromMap(Map<String, dynamic> map) {
    return KeyVaultProperties(
      keyName: (map['keyName'] as String).input(),
      keyVaultResourceId: map['keyVaultResourceId'] == null ? null : (map['keyVaultResourceId']! as String).input(),
      keyVaultUri: (map['keyVaultUri'] as String).input(),
    );
  }
}

