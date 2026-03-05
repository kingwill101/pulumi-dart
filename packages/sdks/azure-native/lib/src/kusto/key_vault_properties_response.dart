// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of the key vault.
class KeyVaultPropertiesResponse {
  /// The name of the key vault key.
  final pulumi.Input<String>? keyName;
  /// The Uri of the key vault.
  final pulumi.Input<String>? keyVaultUri;
  /// The version of the key vault key.
  final pulumi.Input<String>? keyVersion;
  /// The user assigned identity (ARM resource id) that has access to the key.
  final pulumi.Input<String>? userIdentity;

  /// Creates a new [KeyVaultPropertiesResponse].
  /// [keyName] The name of the key vault key.
  /// [keyVaultUri] The Uri of the key vault.
  /// [keyVersion] The version of the key vault key.
  /// [userIdentity] The user assigned identity (ARM resource id) that has access to the key.
  KeyVaultPropertiesResponse({
    this.keyName,
    this.keyVaultUri,
    this.keyVersion,
    this.userIdentity,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyName': ?keyName,
      'keyVaultUri': ?keyVaultUri,
      'keyVersion': ?keyVersion,
      'userIdentity': ?userIdentity,
    };
  }

  factory KeyVaultPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return KeyVaultPropertiesResponse(
      keyName: (() { final guardedValue = map['keyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyVaultUri: (() { final guardedValue = map['keyVaultUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyVersion: (() { final guardedValue = map['keyVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      userIdentity: (() { final guardedValue = map['userIdentity']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

