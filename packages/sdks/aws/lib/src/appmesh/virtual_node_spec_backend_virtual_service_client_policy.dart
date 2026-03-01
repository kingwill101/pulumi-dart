// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_node_spec_backend_virtual_service_client_policy_tls.dart';

class VirtualNodeSpecBackendVirtualServiceClientPolicy {
  /// Transport Layer Security (TLS) client policy.
  final VirtualNodeSpecBackendVirtualServiceClientPolicyTls? tls;

  /// Creates a new [VirtualNodeSpecBackendVirtualServiceClientPolicy].
  /// [tls] Transport Layer Security (TLS) client policy.
  VirtualNodeSpecBackendVirtualServiceClientPolicy({
    this.tls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tls': ?tls == null ? null : tls!.toMap(),
    };
  }

  factory VirtualNodeSpecBackendVirtualServiceClientPolicy.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecBackendVirtualServiceClientPolicy(
      tls: map['tls'] == null ? null : VirtualNodeSpecBackendVirtualServiceClientPolicyTls.fromMap((map['tls'] as Map).cast<String, dynamic>()),
    );
  }
}

