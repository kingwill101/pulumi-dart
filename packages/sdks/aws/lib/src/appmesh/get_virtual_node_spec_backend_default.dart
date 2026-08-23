// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_node_spec_backend_default_client_policy.dart';

class GetVirtualNodeSpecBackendDefault {
  /// Default client policy for virtual service backends. See `spec.backend_defaults.client_policy` Block for details.
  final pulumi.Input<List<GetVirtualNodeSpecBackendDefaultClientPolicy>> clientPolicies;

  /// Creates a new [GetVirtualNodeSpecBackendDefault].
  /// [clientPolicies] Default client policy for virtual service backends. See `spec.backend_defaults.client_policy` Block for details.
  const GetVirtualNodeSpecBackendDefault({
    required this.clientPolicies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientPolicies': pulumi.Input.mapInputValue<List<GetVirtualNodeSpecBackendDefaultClientPolicy>, List<Map<String, dynamic>>>(clientPolicies, (value) => pulumi.Input.encodeList<GetVirtualNodeSpecBackendDefaultClientPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetVirtualNodeSpecBackendDefault.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecBackendDefault(
      clientPolicies: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualNodeSpecBackendDefaultClientPolicy>(map['clientPolicies']!, (value) => GetVirtualNodeSpecBackendDefaultClientPolicy.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
