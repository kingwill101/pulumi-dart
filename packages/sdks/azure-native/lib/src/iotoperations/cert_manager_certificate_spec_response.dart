// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cert_manager_issuer_ref_response.dart';
import 'cert_manager_private_key_response.dart';
import 'san_for_cert_response.dart';

/// Automatic TLS server certificate management with cert-manager
class CertManagerCertificateSpecResponse {
  /// Lifetime of certificate. Must be specified using a Go time.Duration format (h|m|s). E.g. 240h for 240 hours and 45m for 45 minutes.
  final pulumi.Input<String>? duration;
  /// cert-manager issuerRef.
  final pulumi.Input<CertManagerIssuerRefResponse> issuerRef;
  /// Type of certificate private key.
  final pulumi.Input<CertManagerPrivateKeyResponse>? privateKey;
  /// When to begin renewing certificate. Must be specified using a Go time.Duration format (h|m|s). E.g. 240h for 240 hours and 45m for 45 minutes.
  final pulumi.Input<String>? renewBefore;
  /// Additional Subject Alternative Names (SANs) to include in the certificate.
  final pulumi.Input<SanForCertResponse>? san;
  /// Secret for storing server certificate. Any existing data will be overwritten. This is a reference to the secret through an identifying name, not the secret itself.
  final pulumi.Input<String>? secretName;

  /// Creates a new [CertManagerCertificateSpecResponse].
  /// [duration] Lifetime of certificate. Must be specified using a Go time.Duration format (h|m|s). E.g. 240h for 240 hours and 45m for 45 minutes.
  /// [issuerRef] cert-manager issuerRef.
  /// [privateKey] Type of certificate private key.
  /// [renewBefore] When to begin renewing certificate. Must be specified using a Go time.Duration format (h|m|s). E.g. 240h for 240 hours and 45m for 45 minutes.
  /// [san] Additional Subject Alternative Names (SANs) to include in the certificate.
  /// [secretName] Secret for storing server certificate. Any existing data will be overwritten. This is a reference to the secret through an identifying name, not the secret itself.
  const CertManagerCertificateSpecResponse({
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
      'issuerRef': pulumi.Input.mapInputValue<CertManagerIssuerRefResponse, Map<String, dynamic>>(issuerRef, (value) => value.toMap()),
      'privateKey': ?pulumi.Input.mapOptionalInputValue<CertManagerPrivateKeyResponse, Map<String, dynamic>>(privateKey, (value) => value.toMap()),
      'renewBefore': ?renewBefore,
      'san': ?pulumi.Input.mapOptionalInputValue<SanForCertResponse, Map<String, dynamic>>(san, (value) => value.toMap()),
      'secretName': ?secretName,
    };
  }

  factory CertManagerCertificateSpecResponse.fromMap(Map<String, dynamic> map) {
    return CertManagerCertificateSpecResponse(
      duration: (() { final guardedValue = map['duration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      issuerRef: pulumi.Input.fromValue(CertManagerIssuerRefResponse.fromMap((map['issuerRef']! as Map).cast<String, dynamic>())),
      privateKey: (() { final guardedValue = map['privateKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CertManagerPrivateKeyResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      renewBefore: (() { final guardedValue = map['renewBefore']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      san: (() { final guardedValue = map['san']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SanForCertResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      secretName: (() { final guardedValue = map['secretName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
