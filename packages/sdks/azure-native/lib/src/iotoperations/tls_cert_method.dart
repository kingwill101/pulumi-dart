// ignore_for_file: unused_element, unnecessary_cast

import 'cert_manager_certificate_spec.dart';
import 'x509_manual_certificate.dart';

/// Collection of different TLS types, NOTE- Enum at a time only one of them needs to be supported
class TlsCertMethod {
  /// Option 1 - Automatic TLS server certificate management with cert-manager.
  final CertManagerCertificateSpec? certManagerCertificateSpec;
  /// Option 2 - Manual TLS server certificate management through a defined secret.
  final X509ManualCertificate? manual;
  /// Mode of TLS server certificate management.
  final String mode;

  /// Creates a new [TlsCertMethod].
  /// [certManagerCertificateSpec] Option 1 - Automatic TLS server certificate management with cert-manager.
  /// [manual] Option 2 - Manual TLS server certificate management through a defined secret.
  /// [mode] Mode of TLS server certificate management.
  TlsCertMethod({
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

  factory TlsCertMethod.fromMap(Map<String, dynamic> map) {
    return TlsCertMethod(
      certManagerCertificateSpec: map['certManagerCertificateSpec'] == null ? null : CertManagerCertificateSpec.fromMap((map['certManagerCertificateSpec'] as Map).cast<String, dynamic>()),
      manual: map['manual'] == null ? null : X509ManualCertificate.fromMap((map['manual'] as Map).cast<String, dynamic>()),
      mode: map['mode'] as String,
    );
  }
}

