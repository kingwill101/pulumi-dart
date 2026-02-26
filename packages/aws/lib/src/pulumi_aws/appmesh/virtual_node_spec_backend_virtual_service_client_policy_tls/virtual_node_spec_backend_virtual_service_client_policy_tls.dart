// ignore_for_file: unused_element, unnecessary_cast

import '../virtual_node_spec_backend_virtual_service_client_policy_tls_certificate/virtual_node_spec_backend_virtual_service_client_policy_tls_certificate.dart';
import '../virtual_node_spec_backend_virtual_service_client_policy_tls_validation/virtual_node_spec_backend_virtual_service_client_policy_tls_validation.dart';

class VirtualNodeSpecBackendVirtualServiceClientPolicyTls {
  /// Listener's TLS certificate.
  final VirtualNodeSpecBackendVirtualServiceClientPolicyTlsCertificate?
      certificate;

  /// Whether the policy is enforced. Default is <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>.
  final bool? enforce;

  /// One or more ports that the policy is enforced for.
  final List<int>? ports;

  /// Listener's Transport Layer Security (TLS) validation context.
  final VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidation
      validation;

  VirtualNodeSpecBackendVirtualServiceClientPolicyTls({
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

  factory VirtualNodeSpecBackendVirtualServiceClientPolicyTls.fromMap(
      Map<String, dynamic> map) {
    return VirtualNodeSpecBackendVirtualServiceClientPolicyTls(
      certificate: map['certificate'] == null
          ? null
          : VirtualNodeSpecBackendVirtualServiceClientPolicyTlsCertificate
              .fromMap((map['certificate'] as Map).cast<String, dynamic>()),
      enforce: map['enforce'] == null ? null : map['enforce'] as bool,
      ports: map['ports'] == null ? null : (map['ports'] as List).cast<int>(),
      validation:
          VirtualNodeSpecBackendVirtualServiceClientPolicyTlsValidation.fromMap(
              (map['validation'] as Map).cast<String, dynamic>()),
    );
  }
}
