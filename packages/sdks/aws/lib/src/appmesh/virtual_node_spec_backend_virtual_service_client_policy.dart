// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_node_spec_backend_virtual_service_client_policy_tls.dart';

class VirtualNodeSpecBackendVirtualServiceClientPolicy {
  /// Transport Layer Security (TLS) client policy.
  final pulumi.Input<VirtualNodeSpecBackendVirtualServiceClientPolicyTls>? tls;

  /// Creates a new [VirtualNodeSpecBackendVirtualServiceClientPolicy].
  /// [tls] Transport Layer Security (TLS) client policy.
  VirtualNodeSpecBackendVirtualServiceClientPolicy({this.tls});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tls':
          ?pulumi.Input.mapOptionalInputValue<
            VirtualNodeSpecBackendVirtualServiceClientPolicyTls,
            Map<String, dynamic>
          >(tls, (value) => value.toMap()),
    };
  }

  factory VirtualNodeSpecBackendVirtualServiceClientPolicy.fromMap(
    Map<String, dynamic> map,
  ) {
    return VirtualNodeSpecBackendVirtualServiceClientPolicy(
      tls: (() {
        final guardedValue = map['tls'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          VirtualNodeSpecBackendVirtualServiceClientPolicyTls.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
