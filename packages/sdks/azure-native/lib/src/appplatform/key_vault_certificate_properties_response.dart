// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Properties of certificate imported from key vault.
class KeyVaultCertificatePropertiesResponse {
  /// The activate date of certificate.
  final pulumi.Input<String> activateDate;
  /// Indicates whether to automatically synchronize certificate from key vault or not.
  final pulumi.Input<String>? autoSync;
  /// The certificate version of key vault.
  final pulumi.Input<String>? certVersion;
  /// The domain list of certificate.
  final pulumi.Input<List<String>> dnsNames;
  /// Optional. If set to true, it will not import private key from key vault.
  final pulumi.Input<bool>? excludePrivateKey;
  /// The expiration date of certificate.
  final pulumi.Input<String> expirationDate;
  /// The issue date of certificate.
  final pulumi.Input<String> issuedDate;
  /// The issuer of certificate.
  final pulumi.Input<String> issuer;
  /// The certificate name of key vault.
  final pulumi.Input<String> keyVaultCertName;
  /// Provisioning state of the Certificate
  final pulumi.Input<String> provisioningState;
  /// The subject name of certificate.
  final pulumi.Input<String> subjectName;
  /// The thumbprint of certificate.
  final pulumi.Input<String> thumbprint;
  /// The type of the certificate source.
  /// Expected value is 'KeyVaultCertificate'.
  final pulumi.Input<String> type;
  /// The vault uri of user key vault.
  final pulumi.Input<String> vaultUri;

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
      activateDate: (map['activateDate'] as String).input(),
      autoSync: map['autoSync'] == null ? null : (map['autoSync'] as String).input(),
      certVersion: map['certVersion'] == null ? null : (map['certVersion'] as String).input(),
      dnsNames: ((map['dnsNames'] as List).cast<String>()).input(),
      excludePrivateKey: map['excludePrivateKey'] == null ? null : (map['excludePrivateKey'] as bool).input(),
      expirationDate: (map['expirationDate'] as String).input(),
      issuedDate: (map['issuedDate'] as String).input(),
      issuer: (map['issuer'] as String).input(),
      keyVaultCertName: (map['keyVaultCertName'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      subjectName: (map['subjectName'] as String).input(),
      thumbprint: (map['thumbprint'] as String).input(),
      type: (map['type'] as String).input(),
      vaultUri: (map['vaultUri'] as String).input(),
    );
  }
}

