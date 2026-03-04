// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The container group encryption properties.
class EncryptionProperties {
  /// The keyvault managed identity.
  final pulumi.Input<String>? identity;

  /// The encryption key name.
  final pulumi.Input<String> keyName;

  /// The encryption key version.
  final pulumi.Input<String> keyVersion;

  /// The keyvault base url.
  final pulumi.Input<String> vaultBaseUrl;

  /// Creates a new [EncryptionProperties].
  /// [identity] The keyvault managed identity.
  /// [keyName] The encryption key name.
  /// [keyVersion] The encryption key version.
  /// [vaultBaseUrl] The keyvault base url.
  EncryptionProperties({
    this.identity,
    required this.keyName,
    required this.keyVersion,
    required this.vaultBaseUrl,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'identity': ?identity,
      'keyName': keyName,
      'keyVersion': keyVersion,
      'vaultBaseUrl': vaultBaseUrl,
    };
  }

  factory EncryptionProperties.fromMap(Map<String, dynamic> map) {
    return EncryptionProperties(
      identity: (() {
        final guardedValue = map['identity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      keyName: pulumi.Input.fromValue(map['keyName'] as String),
      keyVersion: pulumi.Input.fromValue(map['keyVersion'] as String),
      vaultBaseUrl: pulumi.Input.fromValue(map['vaultBaseUrl'] as String),
    );
  }
}
