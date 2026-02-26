// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_certificate_authority_revocation_configuration/get_certificate_authority_revocation_configuration.dart';

/// Result data returned by getCertificateAuthority.
class GetCertificateAuthorityResult {
  final String arn;

  /// Base64-encoded certificate authority (CA) certificate. Only available after the certificate authority certificate has been imported.
  final String certificate;

  /// Base64-encoded certificate chain that includes any intermediate certificates and chains up to root on-premises certificate that you used to sign your private CA certificate. The chain does not include your private CA certificate. Only available after the certificate authority certificate has been imported.
  final String certificateChain;

  /// The base64 PEM-encoded certificate signing request (CSR) for your private CA certificate.
  final String certificateSigningRequest;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String keyStorageSecurityStandard;

  /// Date and time after which the certificate authority is not valid. Only available after the certificate authority certificate has been imported.
  final String notAfter;

  /// Date and time before which the certificate authority is not valid. Only available after the certificate authority certificate has been imported.
  final String notBefore;
  final String region;

  /// Nested attribute containing revocation configuration.
  final List<GetCertificateAuthorityRevocationConfiguration>
      revocationConfigurations;

  /// Serial number of the certificate authority. Only available after the certificate authority certificate has been imported.
  final String serial;

  /// Status of the certificate authority.
  final String status;

  /// Key-value map of user-defined tags that are attached to the certificate authority.
  final Map<String, String> tags;

  /// Type of the certificate authority.
  final String type;

  /// Specifies whether the CA issues general-purpose certificates that typically require a revocation mechanism, or short-lived certificates that may optionally omit revocation because they expire quickly.
  final String usageMode;

  GetCertificateAuthorityResult({
    required this.arn,
    required this.certificate,
    required this.certificateChain,
    required this.certificateSigningRequest,
    required this.id,
    required this.keyStorageSecurityStandard,
    required this.notAfter,
    required this.notBefore,
    required this.region,
    required this.revocationConfigurations,
    required this.serial,
    required this.status,
    required this.tags,
    required this.type,
    required this.usageMode,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['arn'] = arn;
    map['certificate'] = certificate;
    map['certificateChain'] = certificateChain;
    map['certificateSigningRequest'] = certificateSigningRequest;
    map['id'] = id;
    map['keyStorageSecurityStandard'] = keyStorageSecurityStandard;
    map['notAfter'] = notAfter;
    map['notBefore'] = notBefore;
    map['region'] = region;
    map['revocationConfigurations'] = Input.encodeList<
            GetCertificateAuthorityRevocationConfiguration,
            Map<String, dynamic>>(
        revocationConfigurations, (value) => value.toMap());
    map['serial'] = serial;
    map['status'] = status;
    map['tags'] = tags;
    map['type'] = type;
    map['usageMode'] = usageMode;
    return map;
  }

  factory GetCertificateAuthorityResult.fromMap(Map<String, dynamic> map) {
    return GetCertificateAuthorityResult(
      arn: map['arn'] as String,
      certificate: map['certificate'] as String,
      certificateChain: map['certificateChain'] as String,
      certificateSigningRequest: map['certificateSigningRequest'] as String,
      id: map['id'] as String,
      keyStorageSecurityStandard: map['keyStorageSecurityStandard'] as String,
      notAfter: map['notAfter'] as String,
      notBefore: map['notBefore'] as String,
      region: map['region'] as String,
      revocationConfigurations:
          Input.decodeList<GetCertificateAuthorityRevocationConfiguration>(
              map['revocationConfigurations'],
              (value) => GetCertificateAuthorityRevocationConfiguration.fromMap(
                  (value as Map).cast<String, dynamic>())),
      serial: map['serial'] as String,
      status: map['status'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
      usageMode: map['usageMode'] as String,
    );
  }
}
