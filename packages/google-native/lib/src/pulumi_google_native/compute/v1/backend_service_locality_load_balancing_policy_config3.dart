// ignore_for_file: unused_element, unnecessary_cast

import 'backend_service_locality_load_balancing_policy_config_custom_policy3.dart';
import 'backend_service_locality_load_balancing_policy_config_policy3.dart';

/// Container for either a built-in LB policy supported by gRPC or Envoy or a custom one implemented by the end user.
class BackendServiceLocalityLoadBalancingPolicyConfig3 {
  final BackendServiceLocalityLoadBalancingPolicyConfigCustomPolicy3?
      customPolicy;
  final BackendServiceLocalityLoadBalancingPolicyConfigPolicy3? policy;

  BackendServiceLocalityLoadBalancingPolicyConfig3({
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

  factory BackendServiceLocalityLoadBalancingPolicyConfig3.fromMap(
      Map<String, dynamic> map) {
    return BackendServiceLocalityLoadBalancingPolicyConfig3(
      customPolicy: map['customPolicy'] == null
          ? null
          : BackendServiceLocalityLoadBalancingPolicyConfigCustomPolicy3
              .fromMap((map['customPolicy'] as Map).cast<String, dynamic>()),
      policy: map['policy'] == null
          ? null
          : BackendServiceLocalityLoadBalancingPolicyConfigPolicy3.fromMap(
              (map['policy'] as Map).cast<String, dynamic>()),
    );
  }
}
