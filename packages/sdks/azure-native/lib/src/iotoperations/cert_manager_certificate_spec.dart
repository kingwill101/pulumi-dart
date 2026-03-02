// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cert_manager_issuer_ref.dart';
import 'cert_manager_private_key.dart';
import 'san_for_cert.dart';

/// Automatic TLS server certificate management with cert-manager
class CertManagerCertificateSpec {
  /// Lifetime of certificate. Must be specified using a Go time.Duration format (h|m|s). E.g. 240h for 240 hours and 45m for 45 minutes.
  final pulumi.Input<String>? duration;
  /// cert-manager issuerRef.
  final pulumi.Input<CertManagerIssuerRef> issuerRef;
  /// Type of certificate private key.
  final pulumi.Input<CertManagerPrivateKey>? privateKey;
  /// When to begin renewing certificate. Must be specified using a Go time.Duration format (h|m|s). E.g. 240h for 240 hours and 45m for 45 minutes.
  final pulumi.Input<String>? renewBefore;
  /// Additional Subject Alternative Names (SANs) to include in the certificate.
  final pulumi.Input<SanForCert>? san;
  /// Secret for storing server certificate. Any existing data will be overwritten. This is a reference to the secret through an identifying name, not the secret itself.
  final pulumi.Input<String>? secretName;

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
      'issuerRef': pulumi.Input.mapInputValue<CertManagerIssuerRef, Map<String, dynamic>>(issuerRef, (value) => value.toMap()),
      'privateKey': ?pulumi.Input.mapOptionalInputValue<CertManagerPrivateKey, Map<String, dynamic>>(privateKey, (value) => value.toMap()),
      'renewBefore': ?renewBefore,
      'san': ?pulumi.Input.mapOptionalInputValue<SanForCert, Map<String, dynamic>>(san, (value) => value.toMap()),
      'secretName': ?secretName,
    };
  }

  factory CertManagerCertificateSpec.fromMap(Map<String, dynamic> map) {
    return CertManagerCertificateSpec(
      duration: map['duration'] == null ? null : (map['duration'] as String).input(),
      issuerRef: (CertManagerIssuerRef.fromMap((map['issuerRef'] as Map).cast<String, dynamic>())).input(),
      privateKey: map['privateKey'] == null ? null : (CertManagerPrivateKey.fromMap((map['privateKey'] as Map).cast<String, dynamic>())).input(),
      renewBefore: map['renewBefore'] == null ? null : (map['renewBefore'] as String).input(),
      san: map['san'] == null ? null : (SanForCert.fromMap((map['san'] as Map).cast<String, dynamic>())).input(),
      secretName: map['secretName'] == null ? null : (map['secretName'] as String).input(),
    );
  }
}

