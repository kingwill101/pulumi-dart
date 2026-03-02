// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_node_spec_backend_defaults_client_policy_tls.dart';

class VirtualNodeSpecBackendDefaultsClientPolicy {
  /// Transport Layer Security (TLS) client policy.
  final pulumi.Input<VirtualNodeSpecBackendDefaultsClientPolicyTls>? tls;

  /// Creates a new [VirtualNodeSpecBackendDefaultsClientPolicy].
  /// [tls] Transport Layer Security (TLS) client policy.
  VirtualNodeSpecBackendDefaultsClientPolicy({
    this.tls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tls': ?pulumi.Input.mapOptionalInputValue<VirtualNodeSpecBackendDefaultsClientPolicyTls, Map<String, dynamic>>(tls, (value) => value.toMap()),
    };
  }

  factory VirtualNodeSpecBackendDefaultsClientPolicy.fromMap(Map<String, dynamic> map) {
    return VirtualNodeSpecBackendDefaultsClientPolicy(
      tls: map['tls'] == null ? null : (VirtualNodeSpecBackendDefaultsClientPolicyTls.fromMap((map['tls'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

