// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../record_set_routing_policy_geo_health_checked_targets_internal_load_balancer/record_set_routing_policy_geo_health_checked_targets_internal_load_balancer.dart';

class RecordSetRoutingPolicyGeoHealthCheckedTargets {
  /// The list of external endpoint addresses to health check.
  final List<String>? externalEndpoints;

  /// The list of internal load balancers to health check.
  /// Structure is documented below.
  final List<RecordSetRoutingPolicyGeoHealthCheckedTargetsInternalLoadBalancer>?
      internalLoadBalancers;

  RecordSetRoutingPolicyGeoHealthCheckedTargets({
    this.externalEndpoints,
    this.internalLoadBalancers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final externalEndpointsValue = externalEndpoints;
    if (externalEndpointsValue != null) {
      map['externalEndpoints'] = externalEndpointsValue;
    }
    final internalLoadBalancersValue = internalLoadBalancers;
    if (internalLoadBalancersValue != null) {
      map['internalLoadBalancers'] = pulumi.Input.encodeList<
              RecordSetRoutingPolicyGeoHealthCheckedTargetsInternalLoadBalancer,
              Map<String, dynamic>>(
          internalLoadBalancersValue, (value) => value.toMap());
    }
    return map;
  }

  factory RecordSetRoutingPolicyGeoHealthCheckedTargets.fromMap(
      Map<String, dynamic> map) {
    return RecordSetRoutingPolicyGeoHealthCheckedTargets(
      externalEndpoints: map['externalEndpoints'] == null
          ? null
          : (map['externalEndpoints'] as List).cast<String>(),
      internalLoadBalancers: map['internalLoadBalancers'] == null
          ? null
          : pulumi.Input.decodeList<
                  RecordSetRoutingPolicyGeoHealthCheckedTargetsInternalLoadBalancer>(
              map['internalLoadBalancers'],
              (value) =>
                  RecordSetRoutingPolicyGeoHealthCheckedTargetsInternalLoadBalancer
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
