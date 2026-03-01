// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_gateway_spec_backend_defaults_client_policy_tls_certificate.dart';
import 'virtual_gateway_spec_backend_defaults_client_policy_tls_validation.dart';

class VirtualGatewaySpecBackendDefaultsClientPolicyTls {
  /// Listener's TLS certificate.
  final VirtualGatewaySpecBackendDefaultsClientPolicyTlsCertificate?
  certificate;

  /// Whether the policy is enforced. Default is `true`.
  final bool? enforce;

  /// One or more ports that the policy is enforced for.
  final List<int>? ports;

  /// Listener's Transport Layer Security (TLS) validation context.
  final VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidation validation;

  /// Creates a new [VirtualGatewaySpecBackendDefaultsClientPolicyTls].
  /// [certificate] Listener's TLS certificate.
  /// [enforce] Whether the policy is enforced. Default is `true`.
  /// [ports] One or more ports that the policy is enforced for.
  /// [validation] Listener's Transport Layer Security (TLS) validation context.
  VirtualGatewaySpecBackendDefaultsClientPolicyTls({
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

  factory VirtualGatewaySpecBackendDefaultsClientPolicyTls.fromMap(
    Map<String, dynamic> map,
  ) {
    return VirtualGatewaySpecBackendDefaultsClientPolicyTls(
      certificate: map['certificate'] == null
          ? null
          : VirtualGatewaySpecBackendDefaultsClientPolicyTlsCertificate.fromMap(
              (map['certificate'] as Map).cast<String, dynamic>(),
            ),
      enforce: map['enforce'] == null ? null : map['enforce'] as bool,
      ports: map['ports'] == null ? null : (map['ports'] as List).cast<int>(),
      validation:
          VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidation.fromMap(
            (map['validation'] as Map).cast<String, dynamic>(),
          ),
    );
  }
}
