// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_node_spec_listener_tls_certificate.dart';
import 'virtual_node_spec_listener_tls_validation.dart';

class VirtualNodeSpecListenerTls {
  /// Listener's TLS certificate. See `spec.listener.tls.certificate` Block for details.
  final pulumi.Input<VirtualNodeSpecListenerTlsCertificate> certificate;
  /// Listener's TLS mode. Valid values: `DISABLED`, `PERMISSIVE`, `STRICT`.
  final pulumi.Input<String> mode;
  /// Listener's Transport Layer Security (TLS) validation context. See `spec.listener.tls.validation` Block for details.
  final pulumi.Input<VirtualNodeSpecListenerTlsValidation>? validation;

  /// Creates a new [VirtualNodeSpecListenerTls].
  /// [certificate] Listener's TLS certificate. See `spec.listener.tls.certificate` Block for details.
  /// [mode] Listener's TLS mode. Valid values: `DISABLED`, `PERMISSIVE`, `STRICT`.
  /// [validation] Listener's Transport Layer Security (TLS) validation context. See `spec.listener.tls.validation` Block for details.
  const VirtualNodeSpecListenerTls({
    required this.certificate,
    required this.mode,
    this.validation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': pulumi.Input.mapInputValue<VirtualNodeSpecListenerTlsCertificate, Map<String, dynamic>>(certificate, (value) => value.toMap()),
      'mode': mode,
      'validation': ?pulumi.Input.mapOptionalInputValue<VirtualNodeSpecListenerTlsValidation, Map<String, dynamic>>(validation, (value) => value.toMap()),
    };
  }

  factory VirtualNodeSpecListenerTls.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecListenerTls(
      certificate: pulumi.Input.fromValue(VirtualNodeSpecListenerTlsCertificate.fromMap((map['certificate']! as Map).cast<String, dynamic>())),
      mode: pulumi.Input.fromValue(map['mode'] as String),
      validation: (() { final guardedValue = map['validation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VirtualNodeSpecListenerTlsValidation.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
