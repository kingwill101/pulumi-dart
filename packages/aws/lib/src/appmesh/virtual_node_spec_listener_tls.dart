// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_node_spec_listener_tls_certificate.dart';
import 'virtual_node_spec_listener_tls_validation.dart';

class VirtualNodeSpecListenerTls {
  /// Listener's TLS certificate.
  final VirtualNodeSpecListenerTlsCertificate certificate;
  /// Listener's TLS mode. Valid values: `DISABLED`, `PERMISSIVE`, `STRICT`.
  final String mode;
  /// Listener's Transport Layer Security (TLS) validation context.
  final VirtualNodeSpecListenerTlsValidation? validation;

  /// Creates a new [VirtualNodeSpecListenerTls].
  /// [certificate] Listener's TLS certificate.
  /// [mode] Listener's TLS mode. Valid values: `DISABLED`, `PERMISSIVE`, `STRICT`.
  /// [validation] Listener's Transport Layer Security (TLS) validation context.
  VirtualNodeSpecListenerTls({
    required this.certificate,
    required this.mode,
    this.validation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': certificate.toMap(),
      'mode': mode,
      'validation': ?validation == null ? null : validation!.toMap(),
    };
  }

  factory VirtualNodeSpecListenerTls.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecListenerTls(
      certificate: VirtualNodeSpecListenerTlsCertificate.fromMap((map['certificate'] as Map).cast<String, dynamic>()),
      mode: map['mode'] as String,
      validation: map['validation'] == null ? null : VirtualNodeSpecListenerTlsValidation.fromMap((map['validation'] as Map).cast<String, dynamic>()),
    );
  }
}

