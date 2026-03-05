// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Key Vault input properties for encryption.
class ManagedDiskEncryptionResponseKeyVaultProperties {
  /// The name of KeyVault key.
  final pulumi.Input<String> keyName;
  /// The URI of KeyVault.
  final pulumi.Input<String> keyVaultUri;
  /// The version of KeyVault key.
  final pulumi.Input<String> keyVersion;

  /// Creates a new [ManagedDiskEncryptionResponseKeyVaultProperties].
  /// [keyName] The name of KeyVault key.
  /// [keyVaultUri] The URI of KeyVault.
  /// [keyVersion] The version of KeyVault key.
  ManagedDiskEncryptionResponseKeyVaultProperties({
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

  factory ManagedDiskEncryptionResponseKeyVaultProperties.fromMap(Map<String, dynamic> map) {
    return ManagedDiskEncryptionResponseKeyVaultProperties(
      keyName: pulumi.Input.fromValue(map['keyName'] as String),
      keyVaultUri: pulumi.Input.fromValue(map['keyVaultUri'] as String),
      keyVersion: pulumi.Input.fromValue(map['keyVersion'] as String),
    );
  }
}

