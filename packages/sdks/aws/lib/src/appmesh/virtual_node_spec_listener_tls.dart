// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_node_spec_listener_tls_certificate.dart';
import 'virtual_node_spec_listener_tls_validation.dart';

class VirtualNodeSpecListenerTls {
  /// Listener's TLS certificate.
  final pulumi.Input<VirtualNodeSpecListenerTlsCertificate> certificate;
  /// Listener's TLS mode. Valid values: `DISABLED`, `PERMISSIVE`, `STRICT`.
  final pulumi.Input<String> mode;
  /// Listener's Transport Layer Security (TLS) validation context.
  final pulumi.Input<VirtualNodeSpecListenerTlsValidation>? validation;

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
      'certificate': pulumi.Input.mapInputValue<VirtualNodeSpecListenerTlsCertificate, Map<String, dynamic>>(certificate, (value) => value.toMap()),
      'mode': mode,
      'validation': ?pulumi.Input.mapOptionalInputValue<VirtualNodeSpecListenerTlsValidation, Map<String, dynamic>>(validation, (value) => value.toMap()),
    };
  }

  factory VirtualNodeSpecListenerTls.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecListenerTls(
      certificate: (VirtualNodeSpecListenerTlsCertificate.fromMap((map['certificate']! as Map).cast<String, dynamic>())).input(),
      mode: (map['mode'] as String).input(),
      validation: map['validation'] == null ? null : ((VirtualNodeSpecListenerTlsValidation.fromMap((map['validation']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

