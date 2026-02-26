// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_region_backend_service_network_pass_through_lb_traffic_policy_zonal_affinity/get_region_backend_service_network_pass_through_lb_traffic_policy_zonal_affinity.dart';

class GetRegionBackendServiceNetworkPassThroughLbTrafficPolicy {
  /// When configured, new connections are load balanced across healthy backend endpoints in the local zone.
  final List<
          GetRegionBackendServiceNetworkPassThroughLbTrafficPolicyZonalAffinity>
      zonalAffinities;

  GetRegionBackendServiceNetworkPassThroughLbTrafficPolicy({
    required this.zonalAffinities,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['zonalAffinities'] = Input.encodeList<
        GetRegionBackendServiceNetworkPassThroughLbTrafficPolicyZonalAffinity,
        Map<String, dynamic>>(zonalAffinities, (value) => value.toMap());
    return map;
  }

  factory GetRegionBackendServiceNetworkPassThroughLbTrafficPolicy.fromMap(
      Map<String, dynamic> map) {
    return GetRegionBackendServiceNetworkPassThroughLbTrafficPolicy(
      zonalAffinities: Input.decodeList<
              GetRegionBackendServiceNetworkPassThroughLbTrafficPolicyZonalAffinity>(
          map['zonalAffinities'],
          (value) =>
              GetRegionBackendServiceNetworkPassThroughLbTrafficPolicyZonalAffinity
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
