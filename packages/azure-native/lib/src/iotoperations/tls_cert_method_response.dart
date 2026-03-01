// ignore_for_file: unused_element, unnecessary_cast

import 'cert_manager_certificate_spec_response.dart';
import 'x509_manual_certificate_response.dart';

/// Collection of different TLS types, NOTE- Enum at a time only one of them needs to be supported
class TlsCertMethodResponse {
  /// Option 1 - Automatic TLS server certificate management with cert-manager.
  final CertManagerCertificateSpecResponse? certManagerCertificateSpec;
  /// Option 2 - Manual TLS server certificate management through a defined secret.
  final X509ManualCertificateResponse? manual;
  /// Mode of TLS server certificate management.
  final String mode;

  /// Creates a new [TlsCertMethodResponse].
  /// [certManagerCertificateSpec] Option 1 - Automatic TLS server certificate management with cert-manager.
  /// [manual] Option 2 - Manual TLS server certificate management through a defined secret.
  /// [mode] Mode of TLS server certificate management.
  TlsCertMethodResponse({
    this.certManagerCertificateSpec,
    this.manual,
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certManagerCertificateSpec': ?certManagerCertificateSpec == null ? null : certManagerCertificateSpec!.toMap(),
      'manual': ?manual == null ? null : manual!.toMap(),
      'mode': mode,
    };
  }

  factory TlsCertMethodResponse.fromMap(Map<String, dynamic> map) {
    return TlsCertMethodResponse(
      certManagerCertificateSpec: map['certManagerCertificateSpec'] == null ? null : CertManagerCertificateSpecResponse.fromMap((map['certManagerCertificateSpec'] as Map).cast<String, dynamic>()),
      manual: map['manual'] == null ? null : X509ManualCertificateResponse.fromMap((map['manual'] as Map).cast<String, dynamic>()),
      mode: map['mode'] as String,
    );
  }
}

