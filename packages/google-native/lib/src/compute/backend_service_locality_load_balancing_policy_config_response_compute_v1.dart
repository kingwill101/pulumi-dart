// ignore_for_file: unused_element, unnecessary_cast

import 'backend_service_locality_load_balancing_policy_config_custom_policy_response_compute_v1.dart';
import 'backend_service_locality_load_balancing_policy_config_policy_response_compute_v1.dart';

/// Container for either a built-in LB policy supported by gRPC or Envoy or a custom one implemented by the end user.
class BackendServiceLocalityLoadBalancingPolicyConfigResponseComputeV1 {
  final BackendServiceLocalityLoadBalancingPolicyConfigCustomPolicyResponseComputeV1
      customPolicy;
  final BackendServiceLocalityLoadBalancingPolicyConfigPolicyResponseComputeV1
      policy;

  /// Creates a new [BackendServiceLocalityLoadBalancingPolicyConfigResponseComputeV1].
  /// [customPolicy] Required.
  /// [policy] Required.
  BackendServiceLocalityLoadBalancingPolicyConfigResponseComputeV1({
    required this.customPolicy,
    required this.policy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customPolicy'] = customPolicy.toMap();
    map['policy'] = policy.toMap();
    return map;
  }

  factory BackendServiceLocalityLoadBalancingPolicyConfigResponseComputeV1.fromMap(
      Map<String, dynamic> map) {
    return BackendServiceLocalityLoadBalancingPolicyConfigResponseComputeV1(
      customPolicy:
          BackendServiceLocalityLoadBalancingPolicyConfigCustomPolicyResponseComputeV1
              .fromMap((map['customPolicy'] as Map).cast<String, dynamic>()),
      policy:
          BackendServiceLocalityLoadBalancingPolicyConfigPolicyResponseComputeV1
              .fromMap((map['policy'] as Map).cast<String, dynamic>()),
    );
  }
}
