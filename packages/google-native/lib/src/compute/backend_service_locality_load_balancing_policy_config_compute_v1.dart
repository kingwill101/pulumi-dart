// ignore_for_file: unused_element, unnecessary_cast

import 'backend_service_locality_load_balancing_policy_config_custom_policy_compute_v1.dart';
import 'backend_service_locality_load_balancing_policy_config_policy_compute_v1.dart';

/// Container for either a built-in LB policy supported by gRPC or Envoy or a custom one implemented by the end user.
class BackendServiceLocalityLoadBalancingPolicyConfigComputeV1 {
  final BackendServiceLocalityLoadBalancingPolicyConfigCustomPolicyComputeV1? customPolicy;
  final BackendServiceLocalityLoadBalancingPolicyConfigPolicyComputeV1? policy;

  /// Creates a new [BackendServiceLocalityLoadBalancingPolicyConfigComputeV1].
  /// [customPolicy] Optional.
  /// [policy] Optional.
  BackendServiceLocalityLoadBalancingPolicyConfigComputeV1({
    this.customPolicy,
    this.policy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customPolicy': ?customPolicy == null ? null : customPolicy!.toMap(),
      'policy': ?policy == null ? null : policy!.toMap(),
    };
  }

  factory BackendServiceLocalityLoadBalancingPolicyConfigComputeV1.fromMap(Map<String, dynamic> map) {
    return BackendServiceLocalityLoadBalancingPolicyConfigComputeV1(
      customPolicy: map['customPolicy'] == null ? null : BackendServiceLocalityLoadBalancingPolicyConfigCustomPolicyComputeV1.fromMap((map['customPolicy'] as Map).cast<String, dynamic>()),
      policy: map['policy'] == null ? null : BackendServiceLocalityLoadBalancingPolicyConfigPolicyComputeV1.fromMap((map['policy'] as Map).cast<String, dynamic>()),
    );
  }
}

