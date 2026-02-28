// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rrset_routing_policy_load_balancer_target.dart';

/// HealthCheckTargets describes endpoints to health-check when responding to Routing Policy queries. Only the healthy endpoints will be included in the response.
class RRSetRoutingPolicyHealthCheckTargets {
  final List<RRSetRoutingPolicyLoadBalancerTarget>? internalLoadBalancers;

  /// Creates a new [RRSetRoutingPolicyHealthCheckTargets].
  /// [internalLoadBalancers] Optional.
  RRSetRoutingPolicyHealthCheckTargets({
    this.internalLoadBalancers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'internalLoadBalancers': ?internalLoadBalancers == null ? null : pulumi.Input.encodeList<RRSetRoutingPolicyLoadBalancerTarget, Map<String, dynamic>>(internalLoadBalancers!, (value) => value.toMap()),
    };
  }

  factory RRSetRoutingPolicyHealthCheckTargets.fromMap(Map<String, dynamic> map) {
    return RRSetRoutingPolicyHealthCheckTargets(
      internalLoadBalancers: map['internalLoadBalancers'] == null ? null : pulumi.Input.decodeList<RRSetRoutingPolicyLoadBalancerTarget>(map['internalLoadBalancers'], (value) => RRSetRoutingPolicyLoadBalancerTarget.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

