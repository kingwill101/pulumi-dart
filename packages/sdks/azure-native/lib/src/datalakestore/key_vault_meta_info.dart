// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Metadata information used by account encryption.
class KeyVaultMetaInfo {
  /// The name of the user managed encryption key.
  final pulumi.Input<String> encryptionKeyName;
  /// The version of the user managed encryption key.
  final pulumi.Input<String> encryptionKeyVersion;
  /// The resource identifier for the user managed Key Vault being used to encrypt.
  final pulumi.Input<String> keyVaultResourceId;

  /// Creates a new [KeyVaultMetaInfo].
  /// [encryptionKeyName] The name of the user managed encryption key.
  /// [encryptionKeyVersion] The version of the user managed encryption key.
  /// [keyVaultResourceId] The resource identifier for the user managed Key Vault being used to encrypt.
  const KeyVaultMetaInfo({
    required this.encryptionKeyName,
    required this.encryptionKeyVersion,
    required this.keyVaultResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'encryptionKeyName': encryptionKeyName,
      'encryptionKeyVersion': encryptionKeyVersion,
      'keyVaultResourceId': keyVaultResourceId,
    };
  }

  factory KeyVaultMetaInfo.fromMap(Map<String, dynamic> map) {
    return KeyVaultMetaInfo(
      encryptionKeyName: pulumi.Input.fromValue(map['encryptionKeyName'] as String),
      encryptionKeyVersion: pulumi.Input.fromValue(map['encryptionKeyVersion'] as String),
      keyVaultResourceId: pulumi.Input.fromValue(map['keyVaultResourceId'] as String),
    );
  }
}

