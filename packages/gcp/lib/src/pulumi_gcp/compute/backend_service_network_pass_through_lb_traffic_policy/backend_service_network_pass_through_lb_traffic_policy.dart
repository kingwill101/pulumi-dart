// ignore_for_file: unused_element, unnecessary_cast

import '../backend_service_network_pass_through_lb_traffic_policy_zonal_affinity/backend_service_network_pass_through_lb_traffic_policy_zonal_affinity.dart';

class BackendServiceNetworkPassThroughLbTrafficPolicy {
  /// When configured, new connections are load balanced across healthy backend endpoints in the local zone.
  /// Structure is documented below.
  final BackendServiceNetworkPassThroughLbTrafficPolicyZonalAffinity?
      zonalAffinity;

  BackendServiceNetworkPassThroughLbTrafficPolicy({
    this.zonalAffinity,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final zonalAffinityValue = zonalAffinity;
    if (zonalAffinityValue != null) {
      map['zonalAffinity'] = zonalAffinityValue.toMap();
    }
    return map;
  }

  factory BackendServiceNetworkPassThroughLbTrafficPolicy.fromMap(
      Map<String, dynamic> map) {
    return BackendServiceNetworkPassThroughLbTrafficPolicy(
      zonalAffinity: map['zonalAffinity'] == null
          ? null
          : BackendServiceNetworkPassThroughLbTrafficPolicyZonalAffinity
              .fromMap((map['zonalAffinity'] as Map).cast<String, dynamic>()),
    );
  }
}
