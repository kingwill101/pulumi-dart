// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The object that contains details of encryption used on the workspace.
class Encryption {
  /// The name of KeyVault key.
  final pulumi.Input<String>? keyName;
  /// The encryption keySource (provider). Possible values (case-insensitive):  Default, Microsoft.Keyvault
  final pulumi.Input<String>? keySource;
  /// The Uri of KeyVault.
  final pulumi.Input<String>? keyVaultUri;
  /// The version of KeyVault key.
  final pulumi.Input<String>? keyVersion;

  /// Creates a new [Encryption].
  /// [keyName] The name of KeyVault key.
  /// [keySource] The encryption keySource (provider). Possible values (case-insensitive):  Default, Microsoft.Keyvault
  /// [keyVaultUri] The Uri of KeyVault.
  /// [keyVersion] The version of KeyVault key.
  const Encryption({
    this.keyName,
    this.keySource,
    this.keyVaultUri,
    this.keyVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyName': ?keyName,
      'keySource': ?keySource,
      'keyVaultUri': ?keyVaultUri,
      'keyVersion': ?keyVersion,
    };
  }

  factory Encryption.fromMap(Map<String, dynamic> map) {
    return Encryption(
      keyName: (() { final guardedValue = map['keyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keySource: (() { final guardedValue = map['keySource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyVaultUri: (() { final guardedValue = map['keyVaultUri']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyVersion: (() { final guardedValue = map['keyVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

