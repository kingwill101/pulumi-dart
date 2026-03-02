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
  KeyVaultCertificateProperties({
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
      autoSync: map['autoSync'] == null ? null : (map['autoSync'] as String).input(),
      certVersion: map['certVersion'] == null ? null : (map['certVersion'] as String).input(),
      excludePrivateKey: map['excludePrivateKey'] == null ? null : (map['excludePrivateKey'] as bool).input(),
      keyVaultCertName: (map['keyVaultCertName'] as String).input(),
      type: (map['type'] as String).input(),
      vaultUri: (map['vaultUri'] as String).input(),
    );
  }
}

