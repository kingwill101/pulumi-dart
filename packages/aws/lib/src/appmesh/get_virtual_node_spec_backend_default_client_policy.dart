// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_node_spec_backend_default_client_policy_tl.dart';

class GetVirtualNodeSpecBackendDefaultClientPolicy {
  final List<GetVirtualNodeSpecBackendDefaultClientPolicyTl> tls;

  /// Creates a new [GetVirtualNodeSpecBackendDefaultClientPolicy].
  /// [tls] Required.
  GetVirtualNodeSpecBackendDefaultClientPolicy({required this.tls});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'tls':
          pulumi.Input.encodeList<
            GetVirtualNodeSpecBackendDefaultClientPolicyTl,
            Map<String, dynamic>
          >(tls, (value) => value.toMap()),
    };
  }

  factory GetVirtualNodeSpecBackendDefaultClientPolicy.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetVirtualNodeSpecBackendDefaultClientPolicy(
      tls:
          pulumi
              .Input.decodeList<GetVirtualNodeSpecBackendDefaultClientPolicyTl>(
            map['tls'],
            (value) => GetVirtualNodeSpecBackendDefaultClientPolicyTl.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
    );
  }
}
