// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_node_spec_backend_default_client_policy.dart';

class GetVirtualNodeSpecBackendDefault {
  final List<GetVirtualNodeSpecBackendDefaultClientPolicy> clientPolicies;

  /// Creates a new [GetVirtualNodeSpecBackendDefault].
  /// [clientPolicies] Required.
  GetVirtualNodeSpecBackendDefault({
    required this.clientPolicies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientPolicies': pulumi.Input.encodeList<GetVirtualNodeSpecBackendDefaultClientPolicy, Map<String, dynamic>>(clientPolicies, (value) => value.toMap()),
    };
  }

  factory GetVirtualNodeSpecBackendDefault.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecBackendDefault(
      clientPolicies: pulumi.Input.decodeList<GetVirtualNodeSpecBackendDefaultClientPolicy>(map['clientPolicies'], (value) => GetVirtualNodeSpecBackendDefaultClientPolicy.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

