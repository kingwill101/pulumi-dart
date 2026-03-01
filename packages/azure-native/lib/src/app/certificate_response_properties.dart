// ignore_for_file: unused_element, unnecessary_cast

import 'certificate_key_vault_properties_response.dart';

/// Certificate resource specific properties
class CertificateResponseProperties {
  /// Properties for a certificate stored in a Key Vault.
  final CertificateKeyVaultPropertiesResponse? certificateKeyVaultProperties;
  /// The type of the certificate. Allowed values are `ServerSSLCertificate` and `ImagePullTrustedCA`
  final String? certificateType;
  /// Any errors that occurred during deployment or deployment validation
  final String deploymentErrors;
  /// Certificate expiration date.
  final String expirationDate;
  /// Certificate issue Date.
  final String issueDate;
  /// Certificate issuer.
  final String issuer;
  /// Provisioning state of the certificate.
  final String provisioningState;
  /// Public key hash.
  final String publicKeyHash;
  /// Subject alternative names the certificate applies to.
  final List<String> subjectAlternativeNames;
  /// Subject name of the certificate.
  final String subjectName;
  /// Certificate thumbprint.
  final String thumbprint;
  /// Is the certificate valid?.
  final bool valid;

  /// Creates a new [CertificateResponseProperties].
  /// [certificateKeyVaultProperties] Properties for a certificate stored in a Key Vault.
  /// [certificateType] The type of the certificate. Allowed values are `ServerSSLCertificate` and `ImagePullTrustedCA`
  /// [deploymentErrors] Any errors that occurred during deployment or deployment validation
  /// [expirationDate] Certificate expiration date.
  /// [issueDate] Certificate issue Date.
  /// [issuer] Certificate issuer.
  /// [provisioningState] Provisioning state of the certificate.
  /// [publicKeyHash] Public key hash.
  /// [subjectAlternativeNames] Subject alternative names the certificate applies to.
  /// [subjectName] Subject name of the certificate.
  /// [thumbprint] Certificate thumbprint.
  /// [valid] Is the certificate valid?.
  CertificateResponseProperties({
    this.certificateKeyVaultProperties,
    this.certificateType,
    required this.deploymentErrors,
    required this.expirationDate,
    required this.issueDate,
    required this.issuer,
    required this.provisioningState,
    required this.publicKeyHash,
    required this.subjectAlternativeNames,
    required this.subjectName,
    required this.thumbprint,
    required this.valid,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificateKeyVaultProperties': ?certificateKeyVaultProperties == null ? null : certificateKeyVaultProperties!.toMap(),
      'certificateType': ?certificateType,
      'deploymentErrors': deploymentErrors,
      'expirationDate': expirationDate,
      'issueDate': issueDate,
      'issuer': issuer,
      'provisioningState': provisioningState,
      'publicKeyHash': publicKeyHash,
      'subjectAlternativeNames': subjectAlternativeNames,
      'subjectName': subjectName,
      'thumbprint': thumbprint,
      'valid': valid,
    };
  }

  factory CertificateResponseProperties.fromMap(Map<String, dynamic> map) {
    return CertificateResponseProperties(
      certificateKeyVaultProperties: map['certificateKeyVaultProperties'] == null ? null : CertificateKeyVaultPropertiesResponse.fromMap((map['certificateKeyVaultProperties'] as Map).cast<String, dynamic>()),
      certificateType: map['certificateType'] == null ? null : map['certificateType'] as String,
      deploymentErrors: map['deploymentErrors'] as String,
      expirationDate: map['expirationDate'] as String,
      issueDate: map['issueDate'] as String,
      issuer: map['issuer'] as String,
      provisioningState: map['provisioningState'] as String,
      publicKeyHash: map['publicKeyHash'] as String,
      subjectAlternativeNames: (map['subjectAlternativeNames'] as List).cast<String>(),
      subjectName: map['subjectName'] as String,
      thumbprint: map['thumbprint'] as String,
      valid: map['valid'] as bool,
    );
  }
}

