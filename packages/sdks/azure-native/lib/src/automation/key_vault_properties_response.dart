// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Settings concerning key vault encryption for a configuration store.
class KeyVaultPropertiesResponse {
  /// The name of key used to encrypt data.
  final pulumi.Input<String?>? keyName;
  /// The key version of the key used to encrypt data.
  final pulumi.Input<String?>? keyVersion;
  /// The URI of the key vault key used to encrypt data.
  final pulumi.Input<String?>? keyvaultUri;

  /// Creates a new [KeyVaultPropertiesResponse].
  /// [keyName] The name of key used to encrypt data.
  /// [keyVersion] The key version of the key used to encrypt data.
  /// [keyvaultUri] The URI of the key vault key used to encrypt data.
  const KeyVaultPropertiesResponse({
    this.keyName,
    this.keyVersion,
    this.keyvaultUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyName': ?keyName,
      'keyVersion': ?keyVersion,
      'keyvaultUri': ?keyvaultUri,
    };
  }

  factory KeyVaultPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return KeyVaultPropertiesResponse(
      keyName: (() { final guardedValue = map['keyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyVersion: (() { final guardedValue = map['keyVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyvaultUri: (() { final guardedValue = map['keyvaultUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
