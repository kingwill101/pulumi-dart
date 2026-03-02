// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Key Vault input properties for encryption.
class EncryptionV2ResponseKeyVaultProperties {
  /// The name of KeyVault key.
  final pulumi.Input<String> keyName;
  /// The Uri of KeyVault.
  final pulumi.Input<String> keyVaultUri;
  /// The version of KeyVault key.
  final pulumi.Input<String> keyVersion;

  /// Creates a new [EncryptionV2ResponseKeyVaultProperties].
  /// [keyName] The name of KeyVault key.
  /// [keyVaultUri] The Uri of KeyVault.
  /// [keyVersion] The version of KeyVault key.
  EncryptionV2ResponseKeyVaultProperties({
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

  factory EncryptionV2ResponseKeyVaultProperties.fromMap(Map<String, dynamic> map) {
    return EncryptionV2ResponseKeyVaultProperties(
      keyName: (map['keyName'] as String).input(),
      keyVaultUri: (map['keyVaultUri'] as String).input(),
      keyVersion: (map['keyVersion'] as String).input(),
    );
  }
}

