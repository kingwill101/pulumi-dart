// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_gateway_spec_listener_tls_certificate.dart';
import 'virtual_gateway_spec_listener_tls_validation.dart';

class VirtualGatewaySpecListenerTls {
  /// Listener's TLS certificate.
  final pulumi.Input<VirtualGatewaySpecListenerTlsCertificate> certificate;
  /// Listener's TLS mode. Valid values: `DISABLED`, `PERMISSIVE`, `STRICT`.
  final pulumi.Input<String> mode;
  /// Listener's Transport Layer Security (TLS) validation context.
  final pulumi.Input<VirtualGatewaySpecListenerTlsValidation>? validation;

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
      'certificate': pulumi.Input.mapInputValue<VirtualGatewaySpecListenerTlsCertificate, Map<String, dynamic>>(certificate, (value) => value.toMap()),
      'mode': mode,
      'validation': ?pulumi.Input.mapOptionalInputValue<VirtualGatewaySpecListenerTlsValidation, Map<String, dynamic>>(validation, (value) => value.toMap()),
    };
  }

  factory VirtualGatewaySpecListenerTls.fromMap(Map<String, dynamic> map) {
    return VirtualGatewaySpecListenerTls(
      certificate: (VirtualGatewaySpecListenerTlsCertificate.fromMap((map['certificate'] as Map).cast<String, dynamic>())).input(),
      mode: (map['mode'] as String).input(),
      validation: map['validation'] == null ? null : (VirtualGatewaySpecListenerTlsValidation.fromMap((map['validation'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

