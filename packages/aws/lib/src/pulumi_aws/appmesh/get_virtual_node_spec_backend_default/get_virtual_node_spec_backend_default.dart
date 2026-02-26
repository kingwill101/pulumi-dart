// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_virtual_node_spec_backend_default_client_policy/get_virtual_node_spec_backend_default_client_policy.dart';

class GetVirtualNodeSpecBackendDefault {
  final List<GetVirtualNodeSpecBackendDefaultClientPolicy> clientPolicies;

  GetVirtualNodeSpecBackendDefault({
    required this.clientPolicies,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['clientPolicies'] = Input.encodeList<
        GetVirtualNodeSpecBackendDefaultClientPolicy,
        Map<String, dynamic>>(clientPolicies, (value) => value.toMap());
    return map;
  }

  factory GetVirtualNodeSpecBackendDefault.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecBackendDefault(
      clientPolicies:
          Input.decodeList<GetVirtualNodeSpecBackendDefaultClientPolicy>(
              map['clientPolicies'],
              (value) => GetVirtualNodeSpecBackendDefaultClientPolicy.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
