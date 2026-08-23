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
  const KeyVaultCertificatePropertiesResponse({
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
      activateDate: pulumi.Input.fromValue(map['activateDate'] as String),
      autoSync: (() { final guardedValue = map['autoSync']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      certVersion: (() { final guardedValue = map['certVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dnsNames: pulumi.Input.fromValue((map['dnsNames'] as List).cast<String>()),
      excludePrivateKey: (() { final guardedValue = map['excludePrivateKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      expirationDate: pulumi.Input.fromValue(map['expirationDate'] as String),
      issuedDate: pulumi.Input.fromValue(map['issuedDate'] as String),
      issuer: pulumi.Input.fromValue(map['issuer'] as String),
      keyVaultCertName: pulumi.Input.fromValue(map['keyVaultCertName'] as String),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      subjectName: pulumi.Input.fromValue(map['subjectName'] as String),
      thumbprint: pulumi.Input.fromValue(map['thumbprint'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
      vaultUri: pulumi.Input.fromValue(map['vaultUri'] as String),
    );
  }
}
