// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_certificate_authority_revocation_configuration.dart';

/// Result data returned by getCertificateAuthority.
class GetCertificateAuthorityResult {
  final String? arn;
  /// Base64-encoded certificate authority (CA) certificate. Only available after the certificate authority certificate has been imported.
  final String? certificate;
  /// Base64-encoded certificate chain that includes any intermediate certificates and chains up to root on-premises certificate that you used to sign your private CA certificate. The chain does not include your private CA certificate. Only available after the certificate authority certificate has been imported.
  final String? certificateChain;
  /// The base64 PEM-encoded certificate signing request (CSR) for your private CA certificate.
  final String? certificateSigningRequest;
  /// The provider-assigned unique ID for this managed resource.
  final String? id;
  /// Level of security of the key storage endpoint of the certificate authority.
  final String? keyStorageSecurityStandard;
  /// Date and time after which the certificate authority is not valid. Only available after the certificate authority certificate has been imported.
  final String? notAfter;
  /// Date and time before which the certificate authority is not valid. Only available after the certificate authority certificate has been imported.
  final String? notBefore;
  final String? region;
  /// Nested attribute containing revocation configuration. See `revocationConfiguration` below.
  final List<GetCertificateAuthorityRevocationConfiguration>? revocationConfigurations;
  /// Serial number of the certificate authority. Only available after the certificate authority certificate has been imported.
  final String? serial;
  /// Status of the certificate authority.
  final String? status;
  /// Key-value map of user-defined tags that are attached to the certificate authority.
  final Map<String, String>? tags;
  /// Type of the certificate authority.
  final String? type;
  /// Specifies whether the CA issues general-purpose certificates that typically require a revocation mechanism, or short-lived certificates that may optionally omit revocation because they expire quickly.
  final String? usageMode;

  /// Creates a new [GetCertificateAuthorityResult].
  /// [arn] Optional.
  /// [certificate] Base64-encoded certificate authority (CA) certificate. Only available after the certificate authority certificate has been imported.
  /// [certificateChain] Base64-encoded certificate chain that includes any intermediate certificates and chains up to root on-premises certificate that you used to sign your private CA certificate. The chain does not include your private CA certificate. Only available after the certificate authority certificate has been imported.
  /// [certificateSigningRequest] The base64 PEM-encoded certificate signing request (CSR) for your private CA certificate.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [keyStorageSecurityStandard] Level of security of the key storage endpoint of the certificate authority.
  /// [notAfter] Date and time after which the certificate authority is not valid. Only available after the certificate authority certificate has been imported.
  /// [notBefore] Date and time before which the certificate authority is not valid. Only available after the certificate authority certificate has been imported.
  /// [region] Optional.
  /// [revocationConfigurations] Nested attribute containing revocation configuration. See `revocationConfiguration` below.
  /// [serial] Serial number of the certificate authority. Only available after the certificate authority certificate has been imported.
  /// [status] Status of the certificate authority.
  /// [tags] Key-value map of user-defined tags that are attached to the certificate authority.
  /// [type] Type of the certificate authority.
  /// [usageMode] Specifies whether the CA issues general-purpose certificates that typically require a revocation mechanism, or short-lived certificates that may optionally omit revocation because they expire quickly.
  const GetCertificateAuthorityResult({
    this.arn,
    this.certificate,
    this.certificateChain,
    this.certificateSigningRequest,
    this.id,
    this.keyStorageSecurityStandard,
    this.notAfter,
    this.notBefore,
    this.region,
    this.revocationConfigurations,
    this.serial,
    this.status,
    this.tags,
    this.type,
    this.usageMode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'certificate': ?certificate,
      'certificateChain': ?certificateChain,
      'certificateSigningRequest': ?certificateSigningRequest,
      'id': ?id,
      'keyStorageSecurityStandard': ?keyStorageSecurityStandard,
      'notAfter': ?notAfter,
      'notBefore': ?notBefore,
      'region': ?region,
      'revocationConfigurations': ?(() { final guardedValue = revocationConfigurations; if (guardedValue == null) return null; return pulumi.Input.encodeList<GetCertificateAuthorityRevocationConfiguration, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'serial': ?serial,
      'status': ?status,
      'tags': ?tags,
      'type': ?type,
      'usageMode': ?usageMode,
    };
  }

  factory GetCertificateAuthorityResult.fromMap(Map<String, dynamic> map) {
    return GetCertificateAuthorityResult(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      certificate: (() { final guardedValue = map['certificate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      certificateChain: (() { final guardedValue = map['certificateChain']; if (guardedValue == null) return null; return guardedValue as String; })(),
      certificateSigningRequest: (() { final guardedValue = map['certificateSigningRequest']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      keyStorageSecurityStandard: (() { final guardedValue = map['keyStorageSecurityStandard']; if (guardedValue == null) return null; return guardedValue as String; })(),
      notAfter: (() { final guardedValue = map['notAfter']; if (guardedValue == null) return null; return guardedValue as String; })(),
      notBefore: (() { final guardedValue = map['notBefore']; if (guardedValue == null) return null; return guardedValue as String; })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return guardedValue as String; })(),
      revocationConfigurations: (() { final guardedValue = map['revocationConfigurations']; if (guardedValue == null) return null; return pulumi.Input.decodeList<GetCertificateAuthorityRevocationConfiguration>(guardedValue, (value) => GetCertificateAuthorityRevocationConfiguration.fromMap((value as Map).cast<String, dynamic>())); })(),
      serial: (() { final guardedValue = map['serial']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      usageMode: (() { final guardedValue = map['usageMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
