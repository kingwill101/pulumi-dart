// ignore_for_file: unused_element, unnecessary_cast

import 'cert_manager_issuer_ref.dart';
import 'cert_manager_private_key.dart';
import 'san_for_cert.dart';

/// Automatic TLS server certificate management with cert-manager
class CertManagerCertificateSpec {
  /// Lifetime of certificate. Must be specified using a Go time.Duration format (h|m|s). E.g. 240h for 240 hours and 45m for 45 minutes.
  final String? duration;
  /// cert-manager issuerRef.
  final CertManagerIssuerRef issuerRef;
  /// Type of certificate private key.
  final CertManagerPrivateKey? privateKey;
  /// When to begin renewing certificate. Must be specified using a Go time.Duration format (h|m|s). E.g. 240h for 240 hours and 45m for 45 minutes.
  final String? renewBefore;
  /// Additional Subject Alternative Names (SANs) to include in the certificate.
  final SanForCert? san;
  /// Secret for storing server certificate. Any existing data will be overwritten. This is a reference to the secret through an identifying name, not the secret itself.
  final String? secretName;

  /// Creates a new [CertManagerCertificateSpec].
  /// [duration] Lifetime of certificate. Must be specified using a Go time.Duration format (h|m|s). E.g. 240h for 240 hours and 45m for 45 minutes.
  /// [issuerRef] cert-manager issuerRef.
  /// [privateKey] Type of certificate private key.
  /// [renewBefore] When to begin renewing certificate. Must be specified using a Go time.Duration format (h|m|s). E.g. 240h for 240 hours and 45m for 45 minutes.
  /// [san] Additional Subject Alternative Names (SANs) to include in the certificate.
  /// [secretName] Secret for storing server certificate. Any existing data will be overwritten. This is a reference to the secret through an identifying name, not the secret itself.
  CertManagerCertificateSpec({
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

  factory CertManagerCertificateSpec.fromMap(Map<String, dynamic> map) {
    return CertManagerCertificateSpec(
      duration: map['duration'] == null ? null : map['duration'] as String,
      issuerRef: CertManagerIssuerRef.fromMap((map['issuerRef'] as Map).cast<String, dynamic>()),
      privateKey: map['privateKey'] == null ? null : CertManagerPrivateKey.fromMap((map['privateKey'] as Map).cast<String, dynamic>()),
      renewBefore: map['renewBefore'] == null ? null : map['renewBefore'] as String,
      san: map['san'] == null ? null : SanForCert.fromMap((map['san'] as Map).cast<String, dynamic>()),
      secretName: map['secretName'] == null ? null : map['secretName'] as String,
    );
  }
}

