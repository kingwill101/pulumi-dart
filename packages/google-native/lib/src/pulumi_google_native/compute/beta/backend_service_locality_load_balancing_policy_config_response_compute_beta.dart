// ignore_for_file: unused_element, unnecessary_cast

import 'backend_service_locality_load_balancing_policy_config_custom_policy_response_compute_beta.dart';
import 'backend_service_locality_load_balancing_policy_config_policy_response_compute_beta.dart';

/// Container for either a built-in LB policy supported by gRPC or Envoy or a custom one implemented by the end user.
class BackendServiceLocalityLoadBalancingPolicyConfigResponseComputeBeta {
  final BackendServiceLocalityLoadBalancingPolicyConfigCustomPolicyResponseComputeBeta
      customPolicy;
  final BackendServiceLocalityLoadBalancingPolicyConfigPolicyResponseComputeBeta
      policy;

  BackendServiceLocalityLoadBalancingPolicyConfigResponseComputeBeta({
    required this.customPolicy,
    required this.policy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customPolicy'] = customPolicy.toMap();
    map['policy'] = policy.toMap();
    return map;
  }

  factory BackendServiceLocalityLoadBalancingPolicyConfigResponseComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return BackendServiceLocalityLoadBalancingPolicyConfigResponseComputeBeta(
      customPolicy:
          BackendServiceLocalityLoadBalancingPolicyConfigCustomPolicyResponseComputeBeta
              .fromMap((map['customPolicy'] as Map).cast<String, dynamic>()),
      policy:
          BackendServiceLocalityLoadBalancingPolicyConfigPolicyResponseComputeBeta
              .fromMap((map['policy'] as Map).cast<String, dynamic>()),
    );
  }
}
