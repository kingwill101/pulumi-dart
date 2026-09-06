// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'certificate_key_vault_properties_response.dart';

/// Certificate resource specific properties
class CertificateResponseProperties {
  /// Properties for a certificate stored in a Key Vault.
  final pulumi.Input<CertificateKeyVaultPropertiesResponse?>? certificateKeyVaultProperties;
  /// The type of the certificate. Allowed values are `ServerSSLCertificate` and `ImagePullTrustedCA`
  final pulumi.Input<String?>? certificateType;
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
  const CertificateResponseProperties({
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
      certificateKeyVaultProperties: (() { final guardedValue = map['certificateKeyVaultProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CertificateKeyVaultPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      certificateType: (() { final guardedValue = map['certificateType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      deploymentErrors: pulumi.Input.fromValue(map['deploymentErrors'] as String),
      expirationDate: pulumi.Input.fromValue(map['expirationDate'] as String),
      issueDate: pulumi.Input.fromValue(map['issueDate'] as String),
      issuer: pulumi.Input.fromValue(map['issuer'] as String),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      publicKeyHash: pulumi.Input.fromValue(map['publicKeyHash'] as String),
      subjectAlternativeNames: pulumi.Input.fromValue((map['subjectAlternativeNames'] as List).cast<String>()),
      subjectName: pulumi.Input.fromValue(map['subjectName'] as String),
      thumbprint: pulumi.Input.fromValue(map['thumbprint'] as String),
      valid: pulumi.Input.fromValue(map['valid'] as bool),
    );
  }
}
