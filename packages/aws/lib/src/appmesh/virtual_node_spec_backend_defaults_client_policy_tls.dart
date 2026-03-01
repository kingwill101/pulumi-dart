// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_node_spec_backend_defaults_client_policy_tls_certificate.dart';
import 'virtual_node_spec_backend_defaults_client_policy_tls_validation.dart';

class VirtualNodeSpecBackendDefaultsClientPolicyTls {
  /// Listener's TLS certificate.
  final VirtualNodeSpecBackendDefaultsClientPolicyTlsCertificate? certificate;
  /// Whether the policy is enforced. Default is `true`.
  final bool? enforce;
  /// One or more ports that the policy is enforced for.
  final List<int>? ports;
  /// Listener's Transport Layer Security (TLS) validation context.
  final VirtualNodeSpecBackendDefaultsClientPolicyTlsValidation validation;

  /// Creates a new [VirtualNodeSpecBackendDefaultsClientPolicyTls].
  /// [certificate] Listener's TLS certificate.
  /// [enforce] Whether the policy is enforced. Default is `true`.
  /// [ports] One or more ports that the policy is enforced for.
  /// [validation] Listener's Transport Layer Security (TLS) validation context.
  VirtualNodeSpecBackendDefaultsClientPolicyTls({
    this.certificate,
    this.enforce,
    this.ports,
    required this.validation,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'certificate': ?certificate == null ? null : certificate!.toMap(),
      'enforce': ?enforce,
      'ports': ?ports,
      'validation': validation.toMap(),
    };
  }

  factory VirtualNodeSpecBackendDefaultsClientPolicyTls.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecBackendDefaultsClientPolicyTls(
      certificate: map['certificate'] == null ? null : VirtualNodeSpecBackendDefaultsClientPolicyTlsCertificate.fromMap((map['certificate'] as Map).cast<String, dynamic>()),
      enforce: map['enforce'] == null ? null : map['enforce'] as bool,
      ports: map['ports'] == null ? null : (map['ports'] as List).cast<int>(),
      validation: VirtualNodeSpecBackendDefaultsClientPolicyTlsValidation.fromMap((map['validation'] as Map).cast<String, dynamic>()),
    );
  }
}

