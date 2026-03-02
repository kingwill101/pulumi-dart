// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_key_vault_properties_response.dart';

/// Certificate resource specific properties
class CertificateResponseProperties {
  /// Properties for a certificate stored in a Key Vault.
  final pulumi.Input<CertificateKeyVaultPropertiesResponse>? certificateKeyVaultProperties;
  /// The type of the certificate. Allowed values are `ServerSSLCertificate` and `ImagePullTrustedCA`
  final pulumi.Input<String>? certificateType;
  /// Any errors that occurred during deployment or deployment validation
  final pulumi.Input<String> deploymentErrors;
  /// Certificate expiration date.
  final pulumi.Input<String> expirationDate;
  /// Certificate issue Date.
  final pulumi.Input<String> issueDate;
  /// Certificate issuer.
  final pulumi.Input<String> issuer;
  /// Provisioning state of the certificate.
  final pulumi.Input<String> provisioningState;
  /// Public key hash.
  final pulumi.Input<String> publicKeyHash;
  /// Subject alternative names the certificate applies to.
  final pulumi.Input<List<String>> subjectAlternativeNames;
  /// Subject name of the certificate.
  final pulumi.Input<String> subjectName;
  /// Certificate thumbprint.
  final pulumi.Input<String> thumbprint;
  /// Is the certificate valid?.
  final pulumi.Input<bool> valid;

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
      'certificateKeyVaultProperties': ?pulumi.Input.mapOptionalInputValue<CertificateKeyVaultPropertiesResponse, Map<String, dynamic>>(certificateKeyVaultProperties, (value) => value.toMap()),
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
      certificateKeyVaultProperties: map['certificateKeyVaultProperties'] == null ? null : (CertificateKeyVaultPropertiesResponse.fromMap((map['certificateKeyVaultProperties'] as Map).cast<String, dynamic>())).input(),
      certificateType: map['certificateType'] == null ? null : (map['certificateType'] as String).input(),
      deploymentErrors: (map['deploymentErrors'] as String).input(),
      expirationDate: (map['expirationDate'] as String).input(),
      issueDate: (map['issueDate'] as String).input(),
      issuer: (map['issuer'] as String).input(),
      provisioningState: (map['provisioningState'] as String).input(),
      publicKeyHash: (map['publicKeyHash'] as String).input(),
      subjectAlternativeNames: ((map['subjectAlternativeNames'] as List).cast<String>()).input(),
      subjectName: (map['subjectName'] as String).input(),
      thumbprint: (map['thumbprint'] as String).input(),
      valid: (map['valid'] as bool).input(),
    );
  }
}

