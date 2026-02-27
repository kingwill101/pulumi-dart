// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'rrset_routing_policy_load_balancer_target_response2.dart';

/// HealthCheckTargets describes endpoints to health-check when responding to Routing Policy queries. Only the healthy endpoints will be included in the response.
class RRSetRoutingPolicyHealthCheckTargetsResponse2 {
  final List<RRSetRoutingPolicyLoadBalancerTargetResponse2>
      internalLoadBalancers;

  RRSetRoutingPolicyHealthCheckTargetsResponse2({
    required this.internalLoadBalancers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['internalLoadBalancers'] = Input.encodeList<
        RRSetRoutingPolicyLoadBalancerTargetResponse2,
        Map<String, dynamic>>(internalLoadBalancers, (value) => value.toMap());
    return map;
  }

  factory RRSetRoutingPolicyHealthCheckTargetsResponse2.fromMap(
      Map<String, dynamic> map) {
    return RRSetRoutingPolicyHealthCheckTargetsResponse2(
      internalLoadBalancers:
          Input.decodeList<RRSetRoutingPolicyLoadBalancerTargetResponse2>(
              map['internalLoadBalancers'],
              (value) => RRSetRoutingPolicyLoadBalancerTargetResponse2.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
