// ignore_for_file: unused_element, unnecessary_cast

import 'backend_service_locality_load_balancing_policy_config_custom_policy_response2.dart';
import 'backend_service_locality_load_balancing_policy_config_policy_response2.dart';

/// Container for either a built-in LB policy supported by gRPC or Envoy or a custom one implemented by the end user.
class BackendServiceLocalityLoadBalancingPolicyConfigResponse2 {
  final BackendServiceLocalityLoadBalancingPolicyConfigCustomPolicyResponse2
      customPolicy;
  final BackendServiceLocalityLoadBalancingPolicyConfigPolicyResponse2 policy;

  BackendServiceLocalityLoadBalancingPolicyConfigResponse2({
    required this.customPolicy,
    required this.policy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customPolicy'] = customPolicy.toMap();
    map['policy'] = policy.toMap();
    return map;
  }

  factory BackendServiceLocalityLoadBalancingPolicyConfigResponse2.fromMap(
      Map<String, dynamic> map) {
    return BackendServiceLocalityLoadBalancingPolicyConfigResponse2(
      customPolicy:
          BackendServiceLocalityLoadBalancingPolicyConfigCustomPolicyResponse2
              .fromMap((map['customPolicy'] as Map).cast<String, dynamic>()),
      policy: BackendServiceLocalityLoadBalancingPolicyConfigPolicyResponse2
          .fromMap((map['policy'] as Map).cast<String, dynamic>()),
    );
  }
}
