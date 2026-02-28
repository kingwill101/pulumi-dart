// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rrset_routing_policy_load_balancer_target_dns_v1beta2.dart';

/// HealthCheckTargets describes endpoints to health-check when responding to Routing Policy queries. Only the healthy endpoints will be included in the response.
class RRSetRoutingPolicyHealthCheckTargetsDnsV1beta2 {
  final List<RRSetRoutingPolicyLoadBalancerTargetDnsV1beta2>? internalLoadBalancers;

  /// Creates a new [RRSetRoutingPolicyHealthCheckTargetsDnsV1beta2].
  /// [internalLoadBalancers] Optional.
  RRSetRoutingPolicyHealthCheckTargetsDnsV1beta2({
    this.internalLoadBalancers,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'internalLoadBalancers': ?internalLoadBalancers == null ? null : pulumi.Input.encodeList<RRSetRoutingPolicyLoadBalancerTargetDnsV1beta2, Map<String, dynamic>>(internalLoadBalancers!, (value) => value.toMap()),
    };
  }

  factory RRSetRoutingPolicyHealthCheckTargetsDnsV1beta2.fromMap(Map<String, dynamic> map) {
    return RRSetRoutingPolicyHealthCheckTargetsDnsV1beta2(
      internalLoadBalancers: map['internalLoadBalancers'] == null ? null : pulumi.Input.decodeList<RRSetRoutingPolicyLoadBalancerTargetDnsV1beta2>(map['internalLoadBalancers'], (value) => RRSetRoutingPolicyLoadBalancerTargetDnsV1beta2.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

