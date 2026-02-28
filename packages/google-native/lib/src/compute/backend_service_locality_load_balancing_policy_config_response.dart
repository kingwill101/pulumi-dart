// ignore_for_file: unused_element, unnecessary_cast

import 'backend_service_locality_load_balancing_policy_config_custom_policy_response.dart';
import 'backend_service_locality_load_balancing_policy_config_policy_response.dart';

/// Container for either a built-in LB policy supported by gRPC or Envoy or a custom one implemented by the end user.
class BackendServiceLocalityLoadBalancingPolicyConfigResponse {
  final BackendServiceLocalityLoadBalancingPolicyConfigCustomPolicyResponse
      customPolicy;
  final BackendServiceLocalityLoadBalancingPolicyConfigPolicyResponse policy;

  /// Creates a new [BackendServiceLocalityLoadBalancingPolicyConfigResponse].
  /// [customPolicy] Required.
  /// [policy] Required.
  BackendServiceLocalityLoadBalancingPolicyConfigResponse({
    required this.customPolicy,
    required this.policy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['customPolicy'] = customPolicy.toMap();
    map['policy'] = policy.toMap();
    return map;
  }

  factory BackendServiceLocalityLoadBalancingPolicyConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return BackendServiceLocalityLoadBalancingPolicyConfigResponse(
      customPolicy:
          BackendServiceLocalityLoadBalancingPolicyConfigCustomPolicyResponse
              .fromMap((map['customPolicy'] as Map).cast<String, dynamic>()),
      policy:
          BackendServiceLocalityLoadBalancingPolicyConfigPolicyResponse.fromMap(
              (map['policy'] as Map).cast<String, dynamic>()),
    );
  }
}
