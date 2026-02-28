// ignore_for_file: unused_element, unnecessary_cast

import 'backend_service_locality_load_balancing_policy_config_custom_policy_compute_beta.dart';
import 'backend_service_locality_load_balancing_policy_config_policy_compute_beta.dart';

/// Container for either a built-in LB policy supported by gRPC or Envoy or a custom one implemented by the end user.
class BackendServiceLocalityLoadBalancingPolicyConfigComputeBeta {
  final BackendServiceLocalityLoadBalancingPolicyConfigCustomPolicyComputeBeta?
      customPolicy;
  final BackendServiceLocalityLoadBalancingPolicyConfigPolicyComputeBeta?
      policy;

  /// Creates a new [BackendServiceLocalityLoadBalancingPolicyConfigComputeBeta].
  /// [customPolicy] Optional.
  /// [policy] Optional.
  BackendServiceLocalityLoadBalancingPolicyConfigComputeBeta({
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

  factory BackendServiceLocalityLoadBalancingPolicyConfigComputeBeta.fromMap(
      Map<String, dynamic> map) {
    return BackendServiceLocalityLoadBalancingPolicyConfigComputeBeta(
      customPolicy: map['customPolicy'] == null
          ? null
          : BackendServiceLocalityLoadBalancingPolicyConfigCustomPolicyComputeBeta
              .fromMap((map['customPolicy'] as Map).cast<String, dynamic>()),
      policy: map['policy'] == null
          ? null
          : BackendServiceLocalityLoadBalancingPolicyConfigPolicyComputeBeta
              .fromMap((map['policy'] as Map).cast<String, dynamic>()),
    );
  }
}
