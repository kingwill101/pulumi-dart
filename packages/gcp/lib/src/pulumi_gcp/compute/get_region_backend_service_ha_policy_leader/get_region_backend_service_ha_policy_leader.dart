// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_region_backend_service_ha_policy_leader_network_endpoint/get_region_backend_service_ha_policy_leader_network_endpoint.dart';

class GetRegionBackendServiceHaPolicyLeader {
  /// A fully-qualified URL of the zonal Network Endpoint Group (NEG) that the leader is
  /// attached to.
  final String backendGroup;

  /// The network endpoint within the leader.backendGroup that is designated as the leader.
  final List<GetRegionBackendServiceHaPolicyLeaderNetworkEndpoint>
      networkEndpoints;

  GetRegionBackendServiceHaPolicyLeader({
    required this.backendGroup,
    required this.networkEndpoints,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backendGroup'] = backendGroup;
    map['networkEndpoints'] = pulumi.Input.encodeList<
        GetRegionBackendServiceHaPolicyLeaderNetworkEndpoint,
        Map<String, dynamic>>(networkEndpoints, (value) => value.toMap());
    return map;
  }

  factory GetRegionBackendServiceHaPolicyLeader.fromMap(
      Map<String, dynamic> map) {
    return GetRegionBackendServiceHaPolicyLeader(
      backendGroup: map['backendGroup'] as String,
      networkEndpoints: pulumi.Input.decodeList<
              GetRegionBackendServiceHaPolicyLeaderNetworkEndpoint>(
          map['networkEndpoints'],
          (value) =>
              GetRegionBackendServiceHaPolicyLeaderNetworkEndpoint.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
