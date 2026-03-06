// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cert_manager_certificate_spec.dart';
import 'x509_manual_certificate.dart';

/// Collection of different TLS types, NOTE- Enum at a time only one of them needs to be supported
class TlsCertMethod {
  /// Option 1 - Automatic TLS server certificate management with cert-manager.
  final pulumi.Input<CertManagerCertificateSpec>? certManagerCertificateSpec;
  /// Option 2 - Manual TLS server certificate management through a defined secret.
  final pulumi.Input<X509ManualCertificate>? manual;
  /// Mode of TLS server certificate management.
  final pulumi.Input<String> mode;

  /// Creates a new [TlsCertMethod].
  /// [certManagerCertificateSpec] Option 1 - Automatic TLS server certificate management with cert-manager.
  /// [manual] Option 2 - Manual TLS server certificate management through a defined secret.
  /// [mode] Mode of TLS server certificate management.
  const TlsCertMethod({
    this.certManagerCertificateSpec,
    this.manual,
    required this.mode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certManagerCertificateSpec': ?pulumi.Input.mapOptionalInputValue<CertManagerCertificateSpec, Map<String, dynamic>>(certManagerCertificateSpec, (value) => value.toMap()),
      'manual': ?pulumi.Input.mapOptionalInputValue<X509ManualCertificate, Map<String, dynamic>>(manual, (value) => value.toMap()),
      'mode': mode,
    };
  }

  factory TlsCertMethod.fromMap(Map<String, dynamic> map) {
    return TlsCertMethod(
      certManagerCertificateSpec: (() { final guardedValue = map['certManagerCertificateSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CertManagerCertificateSpec.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      manual: (() { final guardedValue = map['manual']; if (guardedValue == null) return null; return pulumi.Input.fromValue(X509ManualCertificate.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      mode: pulumi.Input.fromValue(map['mode'] as String),
    );
  }
}

