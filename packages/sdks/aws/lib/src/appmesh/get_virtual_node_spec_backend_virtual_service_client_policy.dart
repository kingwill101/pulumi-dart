// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_node_spec_backend_virtual_service_client_policy_tl.dart';

class GetVirtualNodeSpecBackendVirtualServiceClientPolicy {
  final pulumi.Input<List<GetVirtualNodeSpecBackendVirtualServiceClientPolicyTl>> tls;

  /// Creates a new [GetVirtualNodeSpecBackendVirtualServiceClientPolicy].
  /// [tls] Required.
  const GetVirtualNodeSpecBackendVirtualServiceClientPolicy({
    required this.tls,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tls': pulumi.Input.mapInputValue<List<GetVirtualNodeSpecBackendVirtualServiceClientPolicyTl>, List<Map<String, dynamic>>>(tls, (value) => pulumi.Input.encodeList<GetVirtualNodeSpecBackendVirtualServiceClientPolicyTl, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetVirtualNodeSpecBackendVirtualServiceClientPolicy.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecBackendVirtualServiceClientPolicy(
      tls: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualNodeSpecBackendVirtualServiceClientPolicyTl>(map['tls']!, (value) => GetVirtualNodeSpecBackendVirtualServiceClientPolicyTl.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

