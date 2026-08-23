// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of certificate imported from key vault.
class KeyVaultCertificateProperties {
  /// Indicates whether to automatically synchronize certificate from key vault or not.
  final pulumi.Input<String>? autoSync;
  /// The certificate version of key vault.
  final pulumi.Input<String>? certVersion;
  /// Optional. If set to true, it will not import private key from key vault.
  final pulumi.Input<bool>? excludePrivateKey;
  /// The certificate name of key vault.
  final pulumi.Input<String> keyVaultCertName;
  /// The type of the certificate source.
  /// Expected value is 'KeyVaultCertificate'.
  final pulumi.Input<String> type;
  /// The vault uri of user key vault.
  final pulumi.Input<String> vaultUri;

  /// Creates a new [KeyVaultCertificateProperties].
  /// [autoSync] Indicates whether to automatically synchronize certificate from key vault or not.
  /// [certVersion] The certificate version of key vault.
  /// [excludePrivateKey] Optional. If set to true, it will not import private key from key vault.
  /// [keyVaultCertName] The certificate name of key vault.
  /// [type] The type of the certificate source.
  /// [vaultUri] The vault uri of user key vault.
  const KeyVaultCertificateProperties({
    this.autoSync,
    this.certVersion,
    this.excludePrivateKey,
    required this.keyVaultCertName,
    required this.type,
    required this.vaultUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autoSync': ?autoSync,
      'certVersion': ?certVersion,
      'excludePrivateKey': ?excludePrivateKey,
      'keyVaultCertName': keyVaultCertName,
      'type': type,
      'vaultUri': vaultUri,
    };
  }

  factory KeyVaultCertificateProperties.fromMap(Map<String, dynamic> map) {
    return KeyVaultCertificateProperties(
      autoSync: (() { final guardedValue = map['autoSync']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certVersion: (() { final guardedValue = map['certVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      excludePrivateKey: (() { final guardedValue = map['excludePrivateKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      keyVaultCertName: pulumi.Input.fromValue(map['keyVaultCertName'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      vaultUri: pulumi.Input.fromValue(map['vaultUri'] as String),
    );
  }
}
