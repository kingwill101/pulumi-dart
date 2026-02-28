// ignore_for_file: unused_element, unnecessary_cast

import 'virtual_node_spec_backend_defaults_client_policy_tls.dart';

class VirtualNodeSpecBackendDefaultsClientPolicy {
  /// Transport Layer Security (TLS) client policy.
  final VirtualNodeSpecBackendDefaultsClientPolicyTls? tls;

  /// Creates a new [VirtualNodeSpecBackendDefaultsClientPolicy].
  /// [tls] Transport Layer Security (TLS) client policy.
  VirtualNodeSpecBackendDefaultsClientPolicy({
    this.tls,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final tlsValue = tls;
    if (tlsValue != null) {
      map['tls'] = tlsValue.toMap();
    }
    return map;
  }

  factory VirtualNodeSpecBackendDefaultsClientPolicy.fromMap(
      Map<String, dynamic> map) {
    return VirtualNodeSpecBackendDefaultsClientPolicy(
      tls: map['tls'] == null
          ? null
          : VirtualNodeSpecBackendDefaultsClientPolicyTls.fromMap(
              (map['tls'] as Map).cast<String, dynamic>()),
    );
  }
}
