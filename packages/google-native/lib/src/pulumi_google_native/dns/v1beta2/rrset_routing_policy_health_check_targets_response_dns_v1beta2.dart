// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rrset_routing_policy_load_balancer_target_response_dns_v1beta2.dart';

/// HealthCheckTargets describes endpoints to health-check when responding to Routing Policy queries. Only the healthy endpoints will be included in the response.
class RRSetRoutingPolicyHealthCheckTargetsResponseDnsV1beta2 {
  final List<RRSetRoutingPolicyLoadBalancerTargetResponseDnsV1beta2>
      internalLoadBalancers;

  RRSetRoutingPolicyHealthCheckTargetsResponseDnsV1beta2({
    required this.internalLoadBalancers,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['internalLoadBalancers'] = pulumi.Input.encodeList<
        RRSetRoutingPolicyLoadBalancerTargetResponseDnsV1beta2,
        Map<String, dynamic>>(internalLoadBalancers, (value) => value.toMap());
    return map;
  }

  factory RRSetRoutingPolicyHealthCheckTargetsResponseDnsV1beta2.fromMap(
      Map<String, dynamic> map) {
    return RRSetRoutingPolicyHealthCheckTargetsResponseDnsV1beta2(
      internalLoadBalancers: pulumi.Input.decodeList<
              RRSetRoutingPolicyLoadBalancerTargetResponseDnsV1beta2>(
          map['internalLoadBalancers'],
          (value) =>
              RRSetRoutingPolicyLoadBalancerTargetResponseDnsV1beta2.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
