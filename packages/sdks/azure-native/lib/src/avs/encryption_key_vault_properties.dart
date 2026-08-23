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
  const EncryptionKeyVaultProperties({
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
      keyName: (() { final guardedValue = map['keyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyVaultUrl: (() { final guardedValue = map['keyVaultUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyVersion: (() { final guardedValue = map['keyVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
