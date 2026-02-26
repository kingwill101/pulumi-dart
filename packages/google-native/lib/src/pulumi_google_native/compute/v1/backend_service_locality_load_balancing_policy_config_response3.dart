// ignore_for_file: unused_element, unnecessary_cast

import 'backend_service_locality_load_balancing_policy_config_custom_policy_response3.dart';
import 'backend_service_locality_load_balancing_policy_config_policy_response3.dart';

/// Container for either a built-in LB policy supported by gRPC or Envoy or a custom one implemented by the end user.
class BackendServiceLocalityLoadBalancingPolicyConfigResponse3 {
  final BackendServiceLocalityLoadBalancingPolicyConfigCustomPolicyResponse3
      customPolicy;
  final BackendServiceLocalityLoadBalancingPolicyConfigPolicyResponse3 policy;

  BackendServiceLocalityLoadBalancingPolicyConfigResponse3({
    required this.customPolicy,
    required this.policy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customPolicy'] = customPolicy.toMap();
    map['policy'] = policy.toMap();
    return map;
  }

  factory BackendServiceLocalityLoadBalancingPolicyConfigResponse3.fromMap(
      Map<String, dynamic> map) {
    return BackendServiceLocalityLoadBalancingPolicyConfigResponse3(
      customPolicy:
          BackendServiceLocalityLoadBalancingPolicyConfigCustomPolicyResponse3
              .fromMap((map['customPolicy'] as Map).cast<String, dynamic>()),
      policy: BackendServiceLocalityLoadBalancingPolicyConfigPolicyResponse3
          .fromMap((map['policy'] as Map).cast<String, dynamic>()),
    );
  }
}
