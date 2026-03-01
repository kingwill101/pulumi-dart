// ignore_for_file: unused_element, unnecessary_cast


/// Properties of certificate imported from key vault.
class KeyVaultCertificateProperties {
  /// Indicates whether to automatically synchronize certificate from key vault or not.
  final String? autoSync;
  /// The certificate version of key vault.
  final String? certVersion;
  /// Optional. If set to true, it will not import private key from key vault.
  final bool? excludePrivateKey;
  /// The certificate name of key vault.
  final String keyVaultCertName;
  /// The type of the certificate source.
  /// Expected value is 'KeyVaultCertificate'.
  final String type;
  /// The vault uri of user key vault.
  final String vaultUri;

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
      autoSync: map['autoSync'] == null ? null : map['autoSync'] as String,
      certVersion: map['certVersion'] == null ? null : map['certVersion'] as String,
      excludePrivateKey: map['excludePrivateKey'] == null ? null : map['excludePrivateKey'] as bool,
      keyVaultCertName: map['keyVaultCertName'] as String,
      type: map['type'] as String,
      vaultUri: map['vaultUri'] as String,
    );
  }
}

