// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of the key vault.
class KeyVaultProperties {
  /// The name of the key vault key.
  final pulumi.Input<String> keyName;
  /// The Uri of the key vault.
  final pulumi.Input<String> keyVaultUri;
  /// The version of the key vault key.
  final pulumi.Input<String>? keyVersion;
  /// The user assigned identity (ARM resource id) that has access to the key.
  final pulumi.Input<String>? userIdentity;

  /// Creates a new [KeyVaultProperties].
  /// [keyName] The name of the key vault key.
  /// [keyVaultUri] The Uri of the key vault.
  /// [keyVersion] The version of the key vault key.
  /// [userIdentity] The user assigned identity (ARM resource id) that has access to the key.
  KeyVaultProperties({
    required this.keyName,
    required this.keyVaultUri,
    this.keyVersion,
    this.userIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyName': keyName,
      'keyVaultUri': keyVaultUri,
      'keyVersion': ?keyVersion,
      'userIdentity': ?userIdentity,
    };
  }

  factory KeyVaultProperties.fromMap(Map<String, dynamic> map) {
    return KeyVaultProperties(
      keyName: (map['keyName'] as String).input(),
      keyVaultUri: (map['keyVaultUri'] as String).input(),
      keyVersion: map['keyVersion'] == null ? null : (map['keyVersion']! as String).input(),
      userIdentity: map['userIdentity'] == null ? null : (map['userIdentity']! as String).input(),
    );
  }
}

