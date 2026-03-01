// ignore_for_file: unused_element, unnecessary_cast


/// Properties of certificate imported from key vault.
class KeyVaultCertificatePropertiesResponse {
  /// The activate date of certificate.
  final String activateDate;
  /// Indicates whether to automatically synchronize certificate from key vault or not.
  final String? autoSync;
  /// The certificate version of key vault.
  final String? certVersion;
  /// The domain list of certificate.
  final List<String> dnsNames;
  /// Optional. If set to true, it will not import private key from key vault.
  final bool? excludePrivateKey;
  /// The expiration date of certificate.
  final String expirationDate;
  /// The issue date of certificate.
  final String issuedDate;
  /// The issuer of certificate.
  final String issuer;
  /// The certificate name of key vault.
  final String keyVaultCertName;
  /// Provisioning state of the Certificate
  final String provisioningState;
  /// The subject name of certificate.
  final String subjectName;
  /// The thumbprint of certificate.
  final String thumbprint;
  /// The type of the certificate source.
  /// Expected value is 'KeyVaultCertificate'.
  final String type;
  /// The vault uri of user key vault.
  final String vaultUri;

  /// Creates a new [KeyVaultCertificatePropertiesResponse].
  /// [activateDate] The activate date of certificate.
  /// [autoSync] Indicates whether to automatically synchronize certificate from key vault or not.
  /// [certVersion] The certificate version of key vault.
  /// [dnsNames] The domain list of certificate.
  /// [excludePrivateKey] Optional. If set to true, it will not import private key from key vault.
  /// [expirationDate] The expiration date of certificate.
  /// [issuedDate] The issue date of certificate.
  /// [issuer] The issuer of certificate.
  /// [keyVaultCertName] The certificate name of key vault.
  /// [provisioningState] Provisioning state of the Certificate
  /// [subjectName] The subject name of certificate.
  /// [thumbprint] The thumbprint of certificate.
  /// [type] The type of the certificate source.
  /// [vaultUri] The vault uri of user key vault.
  KeyVaultCertificatePropertiesResponse({
    required this.activateDate,
    this.autoSync,
    this.certVersion,
    required this.dnsNames,
    this.excludePrivateKey,
    required this.expirationDate,
    required this.issuedDate,
    required this.issuer,
    required this.keyVaultCertName,
    required this.provisioningState,
    required this.subjectName,
    required this.thumbprint,
    required this.type,
    required this.vaultUri,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activateDate': activateDate,
      'autoSync': ?autoSync,
      'certVersion': ?certVersion,
      'dnsNames': dnsNames,
      'excludePrivateKey': ?excludePrivateKey,
      'expirationDate': expirationDate,
      'issuedDate': issuedDate,
      'issuer': issuer,
      'keyVaultCertName': keyVaultCertName,
      'provisioningState': provisioningState,
      'subjectName': subjectName,
      'thumbprint': thumbprint,
      'type': type,
      'vaultUri': vaultUri,
    };
  }

  factory KeyVaultCertificatePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return KeyVaultCertificatePropertiesResponse(
      activateDate: map['activateDate'] as String,
      autoSync: map['autoSync'] == null ? null : map['autoSync'] as String,
      certVersion: map['certVersion'] == null ? null : map['certVersion'] as String,
      dnsNames: (map['dnsNames'] as List).cast<String>(),
      excludePrivateKey: map['excludePrivateKey'] == null ? null : map['excludePrivateKey'] as bool,
      expirationDate: map['expirationDate'] as String,
      issuedDate: map['issuedDate'] as String,
      issuer: map['issuer'] as String,
      keyVaultCertName: map['keyVaultCertName'] as String,
      provisioningState: map['provisioningState'] as String,
      subjectName: map['subjectName'] as String,
      thumbprint: map['thumbprint'] as String,
      type: map['type'] as String,
      vaultUri: map['vaultUri'] as String,
    );
  }
}

