// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rrset_routing_policy_load_balancer_target_response.dart';

/// HealthCheckTargets describes endpoints to health-check when responding to Routing Policy queries. Only the healthy endpoints will be included in the response.
class RRSetRoutingPolicyHealthCheckTargetsResponse {
  final List<RRSetRoutingPolicyLoadBalancerTargetResponse>
      internalLoadBalancers;

  RRSetRoutingPolicyHealthCheckTargetsResponse({
    required this.internalLoadBalancers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['internalLoadBalancers'] = pulumi.Input.encodeList<
        RRSetRoutingPolicyLoadBalancerTargetResponse,
        Map<String, dynamic>>(internalLoadBalancers, (value) => value.toMap());
    return map;
  }

  factory RRSetRoutingPolicyHealthCheckTargetsResponse.fromMap(
      Map<String, dynamic> map) {
    return RRSetRoutingPolicyHealthCheckTargetsResponse(
      internalLoadBalancers:
          pulumi.Input.decodeList<RRSetRoutingPolicyLoadBalancerTargetResponse>(
              map['internalLoadBalancers'],
              (value) => RRSetRoutingPolicyLoadBalancerTargetResponse.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
