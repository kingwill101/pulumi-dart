// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'record_set_routing_policy_wrr_health_checked_targets_internal_load_balancer.dart';

class RecordSetRoutingPolicyWrrHealthCheckedTargets {
  /// The list of external endpoint addresses to health check.
  final List<String>? externalEndpoints;

  /// The list of internal load balancers to health check.
  /// Structure is documented below.
  final List<RecordSetRoutingPolicyWrrHealthCheckedTargetsInternalLoadBalancer>?
      internalLoadBalancers;

  /// Creates a new [RecordSetRoutingPolicyWrrHealthCheckedTargets].
  /// [externalEndpoints] The list of external endpoint addresses to health check.
  /// [internalLoadBalancers] The list of internal load balancers to health check.
  RecordSetRoutingPolicyWrrHealthCheckedTargets({
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
              RecordSetRoutingPolicyWrrHealthCheckedTargetsInternalLoadBalancer,
              Map<String, dynamic>>(
          internalLoadBalancersValue, (value) => value.toMap());
    }
    return map;
  }

  factory RecordSetRoutingPolicyWrrHealthCheckedTargets.fromMap(
      Map<String, dynamic> map) {
    return RecordSetRoutingPolicyWrrHealthCheckedTargets(
      externalEndpoints: map['externalEndpoints'] == null
          ? null
          : (map['externalEndpoints'] as List).cast<String>(),
      internalLoadBalancers: map['internalLoadBalancers'] == null
          ? null
          : pulumi.Input.decodeList<
                  RecordSetRoutingPolicyWrrHealthCheckedTargetsInternalLoadBalancer>(
              map['internalLoadBalancers'],
              (value) =>
                  RecordSetRoutingPolicyWrrHealthCheckedTargetsInternalLoadBalancer
                      .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
