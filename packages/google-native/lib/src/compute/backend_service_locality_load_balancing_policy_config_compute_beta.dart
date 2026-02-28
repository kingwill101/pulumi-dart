// ignore_for_file: unused_element, unnecessary_cast

import 'backend_service_locality_load_balancing_policy_config_custom_policy_compute_beta.dart';
import 'backend_service_locality_load_balancing_policy_config_policy_compute_beta.dart';

/// Container for either a built-in LB policy supported by gRPC or Envoy or a custom one implemented by the end user.
class BackendServiceLocalityLoadBalancingPolicyConfigComputeBeta {
  final BackendServiceLocalityLoadBalancingPolicyConfigCustomPolicyComputeBeta? customPolicy;
  final BackendServiceLocalityLoadBalancingPolicyConfigPolicyComputeBeta? policy;

  /// Creates a new [BackendServiceLocalityLoadBalancingPolicyConfigComputeBeta].
  /// [customPolicy] Optional.
  /// [policy] Optional.
  BackendServiceLocalityLoadBalancingPolicyConfigComputeBeta({
    this.customPolicy,
    this.policy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customPolicy': ?customPolicy == null ? null : customPolicy!.toMap(),
      'policy': ?policy == null ? null : policy!.toMap(),
    };
  }

  factory BackendServiceLocalityLoadBalancingPolicyConfigComputeBeta.fromMap(Map<String, dynamic> map) {
    return BackendServiceLocalityLoadBalancingPolicyConfigComputeBeta(
      customPolicy: map['customPolicy'] == null ? null : BackendServiceLocalityLoadBalancingPolicyConfigCustomPolicyComputeBeta.fromMap((map['customPolicy'] as Map).cast<String, dynamic>()),
      policy: map['policy'] == null ? null : BackendServiceLocalityLoadBalancingPolicyConfigPolicyComputeBeta.fromMap((map['policy'] as Map).cast<String, dynamic>()),
    );
  }
}

