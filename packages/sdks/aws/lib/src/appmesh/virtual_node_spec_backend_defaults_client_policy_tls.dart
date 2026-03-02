// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_node_spec_backend_defaults_client_policy_tls_certificate.dart';
import 'virtual_node_spec_backend_defaults_client_policy_tls_validation.dart';

class VirtualNodeSpecBackendDefaultsClientPolicyTls {
  /// Listener's TLS certificate.
  final pulumi.Input<VirtualNodeSpecBackendDefaultsClientPolicyTlsCertificate>? certificate;
  /// Whether the policy is enforced. Default is `true`.
  final pulumi.Input<bool>? enforce;
  /// One or more ports that the policy is enforced for.
  final pulumi.Input<List<int>>? ports;
  /// Listener's Transport Layer Security (TLS) validation context.
  final pulumi.Input<VirtualNodeSpecBackendDefaultsClientPolicyTlsValidation> validation;

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
      'certificate': ?pulumi.Input.mapOptionalInputValue<VirtualNodeSpecBackendDefaultsClientPolicyTlsCertificate, Map<String, dynamic>>(certificate, (value) => value.toMap()),
      'enforce': ?enforce,
      'ports': ?ports,
      'validation': pulumi.Input.mapInputValue<VirtualNodeSpecBackendDefaultsClientPolicyTlsValidation, Map<String, dynamic>>(validation, (value) => value.toMap()),
    };
  }

  factory VirtualNodeSpecBackendDefaultsClientPolicyTls.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecBackendDefaultsClientPolicyTls(
      certificate: map['certificate'] == null ? null : ((VirtualNodeSpecBackendDefaultsClientPolicyTlsCertificate.fromMap((map['certificate']! as Map).cast<String, dynamic>())).input()).input(),
      enforce: map['enforce'] == null ? null : ((map['enforce'] as bool).input()).input(),
      ports: map['ports'] == null ? null : (((map['ports'] as List).cast<int>()).input()).input(),
      validation: (VirtualNodeSpecBackendDefaultsClientPolicyTlsValidation.fromMap((map['validation']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

