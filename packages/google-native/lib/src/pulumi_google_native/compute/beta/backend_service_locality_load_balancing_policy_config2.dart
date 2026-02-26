// ignore_for_file: unused_element, unnecessary_cast

import 'backend_service_locality_load_balancing_policy_config_custom_policy2.dart';
import 'backend_service_locality_load_balancing_policy_config_policy2.dart';

/// Container for either a built-in LB policy supported by gRPC or Envoy or a custom one implemented by the end user.
class BackendServiceLocalityLoadBalancingPolicyConfig2 {
  final BackendServiceLocalityLoadBalancingPolicyConfigCustomPolicy2?
      customPolicy;
  final BackendServiceLocalityLoadBalancingPolicyConfigPolicy2? policy;

  BackendServiceLocalityLoadBalancingPolicyConfig2({
    this.customPolicy,
    this.policy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final customPolicyValue = customPolicy;
    if (customPolicyValue != null) {
      map['customPolicy'] = customPolicyValue.toMap();
    }
    final policyValue = policy;
    if (policyValue != null) {
      map['policy'] = policyValue.toMap();
    }
    return map;
  }

  factory BackendServiceLocalityLoadBalancingPolicyConfig2.fromMap(
      Map<String, dynamic> map) {
    return BackendServiceLocalityLoadBalancingPolicyConfig2(
      customPolicy: map['customPolicy'] == null
          ? null
          : BackendServiceLocalityLoadBalancingPolicyConfigCustomPolicy2
              .fromMap((map['customPolicy'] as Map).cast<String, dynamic>()),
      policy: map['policy'] == null
          ? null
          : BackendServiceLocalityLoadBalancingPolicyConfigPolicy2.fromMap(
              (map['policy'] as Map).cast<String, dynamic>()),
    );
  }
}
