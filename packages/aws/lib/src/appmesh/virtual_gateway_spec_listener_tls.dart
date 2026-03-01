// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_gateway_spec_listener_tls_certificate.dart';
import 'virtual_gateway_spec_listener_tls_validation.dart';

class VirtualGatewaySpecListenerTls {
  /// Listener's TLS certificate.
  final VirtualGatewaySpecListenerTlsCertificate certificate;

  /// Listener's TLS mode. Valid values: `DISABLED`, `PERMISSIVE`, `STRICT`.
  final String mode;

  /// Listener's Transport Layer Security (TLS) validation context.
  final VirtualGatewaySpecListenerTlsValidation? validation;

  /// Creates a new [VirtualGatewaySpecListenerTls].
  /// [certificate] Listener's TLS certificate.
  /// [mode] Listener's TLS mode. Valid values: `DISABLED`, `PERMISSIVE`, `STRICT`.
  /// [validation] Listener's Transport Layer Security (TLS) validation context.
  VirtualGatewaySpecListenerTls({
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

  factory VirtualGatewaySpecListenerTls.fromMap(Map<String, dynamic> map) {
    return VirtualGatewaySpecListenerTls(
      certificate: VirtualGatewaySpecListenerTlsCertificate.fromMap(
        (map['certificate'] as Map).cast<String, dynamic>(),
      ),
      mode: map['mode'] as String,
      validation: map['validation'] == null
          ? null
          : VirtualGatewaySpecListenerTlsValidation.fromMap(
              (map['validation'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
