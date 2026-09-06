// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An Encryption Key
class EncryptionKeyVaultPropertiesResponse {
  /// The auto-detected version of the key if versionType is auto-detected.
  final pulumi.Input<String> autoDetectedKeyVersion;
  /// The name of the key.
  final pulumi.Input<String?>? keyName;
  /// The state of key provided
  final pulumi.Input<String> keyState;
  /// The URL of the vault.
  final pulumi.Input<String?>? keyVaultUrl;
  /// The version of the key.
  final pulumi.Input<String?>? keyVersion;
  /// Property of the key if user provided or auto detected
  final pulumi.Input<String> versionType;

  /// Creates a new [EncryptionKeyVaultPropertiesResponse].
  /// [autoDetectedKeyVersion] The auto-detected version of the key if versionType is auto-detected.
  /// [keyName] The name of the key.
  /// [keyState] The state of key provided
  /// [keyVaultUrl] The URL of the vault.
  /// [keyVersion] The version of the key.
  /// [versionType] Property of the key if user provided or auto detected
  const EncryptionKeyVaultPropertiesResponse({
    required this.autoDetectedKeyVersion,
    this.keyName,
    required this.keyState,
    this.keyVaultUrl,
    this.keyVersion,
    required this.versionType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoDetectedKeyVersion': autoDetectedKeyVersion,
      'keyName': ?keyName,
      'keyState': keyState,
      'keyVaultUrl': ?keyVaultUrl,
      'keyVersion': ?keyVersion,
      'versionType': versionType,
    };
  }

  factory EncryptionKeyVaultPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return EncryptionKeyVaultPropertiesResponse(
      autoDetectedKeyVersion: pulumi.Input.fromValue(map['autoDetectedKeyVersion'] as String),
      keyName: (() { final guardedValue = map['keyName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyState: pulumi.Input.fromValue(map['keyState'] as String),
      keyVaultUrl: (() { final guardedValue = map['keyVaultUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      keyVersion: (() { final guardedValue = map['keyVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      versionType: pulumi.Input.fromValue(map['versionType'] as String),
    );
  }
}
