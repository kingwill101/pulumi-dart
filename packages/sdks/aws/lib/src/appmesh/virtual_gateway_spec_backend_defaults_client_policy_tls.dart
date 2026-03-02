// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_gateway_spec_backend_defaults_client_policy_tls_certificate.dart';
import 'virtual_gateway_spec_backend_defaults_client_policy_tls_validation.dart';

class VirtualGatewaySpecBackendDefaultsClientPolicyTls {
  /// Listener's TLS certificate.
  final pulumi.Input<VirtualGatewaySpecBackendDefaultsClientPolicyTlsCertificate>? certificate;
  /// Whether the policy is enforced. Default is `true`.
  final pulumi.Input<bool>? enforce;
  /// One or more ports that the policy is enforced for.
  final pulumi.Input<List<int>>? ports;
  /// Listener's Transport Layer Security (TLS) validation context.
  final pulumi.Input<VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidation> validation;

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
      'certificate': ?pulumi.Input.mapOptionalInputValue<VirtualGatewaySpecBackendDefaultsClientPolicyTlsCertificate, Map<String, dynamic>>(certificate, (value) => value.toMap()),
      'enforce': ?enforce,
      'ports': ?ports,
      'validation': pulumi.Input.mapInputValue<VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidation, Map<String, dynamic>>(validation, (value) => value.toMap()),
    };
  }

  factory VirtualGatewaySpecBackendDefaultsClientPolicyTls.fromMap(Map<String, dynamic> map) {
    return VirtualGatewaySpecBackendDefaultsClientPolicyTls(
      certificate: map['certificate'] == null ? null : ((VirtualGatewaySpecBackendDefaultsClientPolicyTlsCertificate.fromMap((map['certificate']! as Map).cast<String, dynamic>())).input()).input(),
      enforce: map['enforce'] == null ? null : ((map['enforce'] as bool).input()).input(),
      ports: map['ports'] == null ? null : (((map['ports'] as List).cast<int>()).input()).input(),
      validation: (VirtualGatewaySpecBackendDefaultsClientPolicyTlsValidation.fromMap((map['validation']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

