// ignore_for_file: unused_element, unnecessary_cast

import '../virtual_gateway_spec_backend_defaults_client_policy_tls_certificate/virtual_gateway_spec_backend_defaults_client_policy_tls_certificate.dart';
import '../virtual_gateway_spec_backend_defaults_client_policy_tls_validation/virtual_gateway_spec_backend_defaults_client_policy_tls_validation.dart';

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

  VirtualGatewaySpecBackendDefaultsClientPolicyTls({
    this.certificate,
    this.enforce,
    this.ports,
    required this.validation,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final certificateValue = certificate;
    if (certificateValue != null) {
      map['certificate'] = certificateValue.toMap();
    }
    final enforceValue = enforce;
    if (enforceValue != null) {
      map['enforce'] = enforceValue;
    }
    final portsValue = ports;
    if (portsValue != null) {
      map['ports'] = portsValue;
    }
    map['validation'] = validation.toMap();
    return map;
  }

  factory VirtualGatewaySpecBackendDefaultsClientPolicyTls.fromMap(
      Map<String, dynamic> map) {
    return VirtualGatewaySpecBackendDefaultsClientPolicyTls(
      certificate: map['certificate'] == null
          ? null
          : VirtualGatewaySpecBackendDefaultsClientPolicyTlsCertificate.fromMap(
              (map['certificate'] as Map).cast<String, dynamic>()),
      enforce: map['enforce'] == null ? null : map['enforce'] as bool,
      ports: map['ports'] == null ? null : (map['ports'] as List).cast<int>(),
      validation:
          VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidation.fromMap(
              (map['validation'] as Map).cast<String, dynamic>()),
    );
  }
}
