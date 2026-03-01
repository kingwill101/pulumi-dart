// ignore_for_file: unused_element, unnecessary_cast

import 'cert_manager_issuer_ref_response.dart';
import 'cert_manager_private_key_response.dart';
import 'san_for_cert_response.dart';

/// Automatic TLS server certificate management with cert-manager
class AutomaticCertMethodResponse {
  /// Lifetime of automatically-managed certificate.
  final String? duration;
  /// cert-manager issuerRef.
  final CertManagerIssuerRefResponse issuerRef;
  /// Cert Manager private key.
  final CertManagerPrivateKeyResponse? privateKey;
  /// When to begin renewing automatically-managed certificate.
  final String? renewBefore;
  /// Additional SANs to include in the certificate.
  final SanForCertResponse? san;
  /// Secret for storing server certificate. Any existing data will be overwritten.
  final String? secretName;
  /// Certificate K8S namespace. Omit to use default namespace.
  final String? secretNamespace;

  /// Creates a new [AutomaticCertMethodResponse].
  /// [duration] Lifetime of automatically-managed certificate.
  /// [issuerRef] cert-manager issuerRef.
  /// [privateKey] Cert Manager private key.
  /// [renewBefore] When to begin renewing automatically-managed certificate.
  /// [san] Additional SANs to include in the certificate.
  /// [secretName] Secret for storing server certificate. Any existing data will be overwritten.
  /// [secretNamespace] Certificate K8S namespace. Omit to use default namespace.
  AutomaticCertMethodResponse({
    this.duration,
    required this.issuerRef,
    this.privateKey,
    this.renewBefore,
    this.san,
    this.secretName,
    this.secretNamespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': ?duration,
      'issuerRef': issuerRef.toMap(),
      'privateKey': ?privateKey == null ? null : privateKey!.toMap(),
      'renewBefore': ?renewBefore,
      'san': ?san == null ? null : san!.toMap(),
      'secretName': ?secretName,
      'secretNamespace': ?secretNamespace,
    };
  }

  factory AutomaticCertMethodResponse.fromMap(Map<String, dynamic> map) {
    return AutomaticCertMethodResponse(
      duration: map['duration'] == null ? null : map['duration'] as String,
      issuerRef: CertManagerIssuerRefResponse.fromMap((map['issuerRef'] as Map).cast<String, dynamic>()),
      privateKey: map['privateKey'] == null ? null : CertManagerPrivateKeyResponse.fromMap((map['privateKey'] as Map).cast<String, dynamic>()),
      renewBefore: map['renewBefore'] == null ? null : map['renewBefore'] as String,
      san: map['san'] == null ? null : SanForCertResponse.fromMap((map['san'] as Map).cast<String, dynamic>()),
      secretName: map['secretName'] == null ? null : map['secretName'] as String,
      secretNamespace: map['secretNamespace'] == null ? null : map['secretNamespace'] as String,
    );
  }
}

