// ignore_for_file: unused_element, unnecessary_cast

import 'cert_manager_issuer_ref_response.dart';
import 'cert_manager_private_key_response.dart';
import 'san_for_cert_response.dart';

/// Automatic TLS server certificate management with cert-manager
class CertManagerCertificateSpecResponse {
  /// Lifetime of certificate. Must be specified using a Go time.Duration format (h|m|s). E.g. 240h for 240 hours and 45m for 45 minutes.
  final String? duration;
  /// cert-manager issuerRef.
  final CertManagerIssuerRefResponse issuerRef;
  /// Type of certificate private key.
  final CertManagerPrivateKeyResponse? privateKey;
  /// When to begin renewing certificate. Must be specified using a Go time.Duration format (h|m|s). E.g. 240h for 240 hours and 45m for 45 minutes.
  final String? renewBefore;
  /// Additional Subject Alternative Names (SANs) to include in the certificate.
  final SanForCertResponse? san;
  /// Secret for storing server certificate. Any existing data will be overwritten. This is a reference to the secret through an identifying name, not the secret itself.
  final String? secretName;

  /// Creates a new [CertManagerCertificateSpecResponse].
  /// [duration] Lifetime of certificate. Must be specified using a Go time.Duration format (h|m|s). E.g. 240h for 240 hours and 45m for 45 minutes.
  /// [issuerRef] cert-manager issuerRef.
  /// [privateKey] Type of certificate private key.
  /// [renewBefore] When to begin renewing certificate. Must be specified using a Go time.Duration format (h|m|s). E.g. 240h for 240 hours and 45m for 45 minutes.
  /// [san] Additional Subject Alternative Names (SANs) to include in the certificate.
  /// [secretName] Secret for storing server certificate. Any existing data will be overwritten. This is a reference to the secret through an identifying name, not the secret itself.
  CertManagerCertificateSpecResponse({
    this.duration,
    required this.issuerRef,
    this.privateKey,
    this.renewBefore,
    this.san,
    this.secretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': ?duration,
      'issuerRef': issuerRef.toMap(),
      'privateKey': ?privateKey == null ? null : privateKey!.toMap(),
      'renewBefore': ?renewBefore,
      'san': ?san == null ? null : san!.toMap(),
      'secretName': ?secretName,
    };
  }

  factory CertManagerCertificateSpecResponse.fromMap(Map<String, dynamic> map) {
    return CertManagerCertificateSpecResponse(
      duration: map['duration'] == null ? null : map['duration'] as String,
      issuerRef: CertManagerIssuerRefResponse.fromMap((map['issuerRef'] as Map).cast<String, dynamic>()),
      privateKey: map['privateKey'] == null ? null : CertManagerPrivateKeyResponse.fromMap((map['privateKey'] as Map).cast<String, dynamic>()),
      renewBefore: map['renewBefore'] == null ? null : map['renewBefore'] as String,
      san: map['san'] == null ? null : SanForCertResponse.fromMap((map['san'] as Map).cast<String, dynamic>()),
      secretName: map['secretName'] == null ? null : map['secretName'] as String,
    );
  }
}

