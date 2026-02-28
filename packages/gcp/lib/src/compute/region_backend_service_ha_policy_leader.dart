// ignore_for_file: unused_element, unnecessary_cast

import 'region_backend_service_ha_policy_leader_network_endpoint.dart';

class RegionBackendServiceHaPolicyLeader {
  /// A fully-qualified URL of the zonal Network Endpoint Group (NEG) that the leader is
  /// attached to.
  final String? backendGroup;
  /// The network endpoint within the leader.backendGroup that is designated as the leader.
  /// Structure is documented below.
  final RegionBackendServiceHaPolicyLeaderNetworkEndpoint? networkEndpoint;

  /// Creates a new [RegionBackendServiceHaPolicyLeader].
  /// [backendGroup] A fully-qualified URL of the zonal Network Endpoint Group (NEG) that the leader is
  /// [networkEndpoint] The network endpoint within the leader.backendGroup that is designated as the leader.
  RegionBackendServiceHaPolicyLeader({
    this.backendGroup,
    this.networkEndpoint,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendGroup': ?backendGroup,
      'networkEndpoint': ?networkEndpoint == null ? null : networkEndpoint!.toMap(),
    };
  }

  factory RegionBackendServiceHaPolicyLeader.fromMap(Map<String, dynamic> map) {
    return RegionBackendServiceHaPolicyLeader(
      backendGroup: map['backendGroup'] == null ? null : map['backendGroup'] as String,
      networkEndpoint: map['networkEndpoint'] == null ? null : RegionBackendServiceHaPolicyLeaderNetworkEndpoint.fromMap((map['networkEndpoint'] as Map).cast<String, dynamic>()),
    );
  }
}

