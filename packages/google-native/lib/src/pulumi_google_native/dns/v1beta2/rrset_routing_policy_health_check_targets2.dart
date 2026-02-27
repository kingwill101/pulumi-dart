// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'rrset_routing_policy_load_balancer_target2.dart';

/// HealthCheckTargets describes endpoints to health-check when responding to Routing Policy queries. Only the healthy endpoints will be included in the response.
class RRSetRoutingPolicyHealthCheckTargets2 {
  final List<RRSetRoutingPolicyLoadBalancerTarget2>? internalLoadBalancers;

  RRSetRoutingPolicyHealthCheckTargets2({
    this.internalLoadBalancers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final internalLoadBalancersValue = internalLoadBalancers;
    if (internalLoadBalancersValue != null) {
      map['internalLoadBalancers'] = Input.encodeList<
              RRSetRoutingPolicyLoadBalancerTarget2, Map<String, dynamic>>(
          internalLoadBalancersValue, (value) => value.toMap());
    }
    return map;
  }

  factory RRSetRoutingPolicyHealthCheckTargets2.fromMap(
      Map<String, dynamic> map) {
    return RRSetRoutingPolicyHealthCheckTargets2(
      internalLoadBalancers: map['internalLoadBalancers'] == null
          ? null
          : Input.decodeList<RRSetRoutingPolicyLoadBalancerTarget2>(
              map['internalLoadBalancers'],
              (value) => RRSetRoutingPolicyLoadBalancerTarget2.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
