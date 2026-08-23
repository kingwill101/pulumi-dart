// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_virtual_node_spec_backend_virtual_service_client_policy.dart';

class GetVirtualNodeSpecBackendVirtualService {
  /// Default client policy for virtual service backends. See `spec.backend_defaults.client_policy` Block for details.
  final pulumi.Input<List<GetVirtualNodeSpecBackendVirtualServiceClientPolicy>> clientPolicies;
  /// Name of the virtual service that is acting as a virtual node backend.
  final pulumi.Input<String> virtualServiceName;

  /// Creates a new [GetVirtualNodeSpecBackendVirtualService].
  /// [clientPolicies] Default client policy for virtual service backends. See `spec.backend_defaults.client_policy` Block for details.
  /// [virtualServiceName] Name of the virtual service that is acting as a virtual node backend.
  const GetVirtualNodeSpecBackendVirtualService({
    required this.clientPolicies,
    required this.virtualServiceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientPolicies': pulumi.Input.mapInputValue<List<GetVirtualNodeSpecBackendVirtualServiceClientPolicy>, List<Map<String, dynamic>>>(clientPolicies, (value) => pulumi.Input.encodeList<GetVirtualNodeSpecBackendVirtualServiceClientPolicy, Map<String, dynamic>>(value, (value) => value.toMap())),
      'virtualServiceName': virtualServiceName,
    };
  }

  factory GetVirtualNodeSpecBackendVirtualService.fromMap(Map<String, dynamic> map) {
    return GetVirtualNodeSpecBackendVirtualService(
      clientPolicies: pulumi.Input.fromValue(pulumi.Input.decodeList<GetVirtualNodeSpecBackendVirtualServiceClientPolicy>(map['clientPolicies']!, (value) => GetVirtualNodeSpecBackendVirtualServiceClientPolicy.fromMap((value as Map).cast<String, dynamic>()))),
      virtualServiceName: pulumi.Input.fromValue(map['virtualServiceName'] as String),
    );
  }
}
