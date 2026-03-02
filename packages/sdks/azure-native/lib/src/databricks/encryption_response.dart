// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The object that contains details of encryption used on the workspace.
class EncryptionResponse {
  /// The name of KeyVault key.
  final pulumi.Input<String>? keyName;
  /// The encryption keySource (provider). Possible values (case-insensitive):  Default, Microsoft.Keyvault
  final pulumi.Input<String>? keySource;
  /// The Uri of KeyVault.
  final pulumi.Input<String>? keyVaultUri;
  /// The version of KeyVault key.
  final pulumi.Input<String>? keyVersion;

  /// Creates a new [EncryptionResponse].
  /// [keyName] The name of KeyVault key.
  /// [keySource] The encryption keySource (provider). Possible values (case-insensitive):  Default, Microsoft.Keyvault
  /// [keyVaultUri] The Uri of KeyVault.
  /// [keyVersion] The version of KeyVault key.
  EncryptionResponse({
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

  factory EncryptionResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionResponse(
      keyName: map['keyName'] == null ? null : (map['keyName']! as String).input(),
      keySource: map['keySource'] == null ? null : (map['keySource']! as String).input(),
      keyVaultUri: map['keyVaultUri'] == null ? null : (map['keyVaultUri']! as String).input(),
      keyVersion: map['keyVersion'] == null ? null : (map['keyVersion']! as String).input(),
    );
  }
}

