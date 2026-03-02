// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An Encryption Key
class EncryptionKeyVaultProperties {
  /// The name of the key.
  final pulumi.Input<String>? keyName;
  /// The URL of the vault.
  final pulumi.Input<String>? keyVaultUrl;
  /// The version of the key.
  final pulumi.Input<String>? keyVersion;

  /// Creates a new [EncryptionKeyVaultProperties].
  /// [keyName] The name of the key.
  /// [keyVaultUrl] The URL of the vault.
  /// [keyVersion] The version of the key.
  EncryptionKeyVaultProperties({
    this.keyName,
    this.keyVaultUrl,
    this.keyVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyName': ?keyName,
      'keyVaultUrl': ?keyVaultUrl,
      'keyVersion': ?keyVersion,
    };
  }

  factory EncryptionKeyVaultProperties.fromMap(Map<String, dynamic> map) {
    return EncryptionKeyVaultProperties(
      keyName: map['keyName'] == null ? null : (map['keyName'] as String).input(),
      keyVaultUrl: map['keyVaultUrl'] == null ? null : (map['keyVaultUrl'] as String).input(),
      keyVersion: map['keyVersion'] == null ? null : (map['keyVersion'] as String).input(),
    );
  }
}

