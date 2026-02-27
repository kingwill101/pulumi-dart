// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_backend_service_network_pass_through_lb_traffic_policy_zonal_affinity/get_backend_service_network_pass_through_lb_traffic_policy_zonal_affinity.dart';

class GetBackendServiceNetworkPassThroughLbTrafficPolicy {
  /// When configured, new connections are load balanced across healthy backend endpoints in the local zone.
  final List<GetBackendServiceNetworkPassThroughLbTrafficPolicyZonalAffinity>
      zonalAffinities;

  GetBackendServiceNetworkPassThroughLbTrafficPolicy({
    required this.zonalAffinities,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['zonalAffinities'] = pulumi.Input.encodeList<
        GetBackendServiceNetworkPassThroughLbTrafficPolicyZonalAffinity,
        Map<String, dynamic>>(zonalAffinities, (value) => value.toMap());
    return map;
  }

  factory GetBackendServiceNetworkPassThroughLbTrafficPolicy.fromMap(
      Map<String, dynamic> map) {
    return GetBackendServiceNetworkPassThroughLbTrafficPolicy(
      zonalAffinities: pulumi.Input.decodeList<
              GetBackendServiceNetworkPassThroughLbTrafficPolicyZonalAffinity>(
          map['zonalAffinities'],
          (value) =>
              GetBackendServiceNetworkPassThroughLbTrafficPolicyZonalAffinity
                  .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
