// ignore_for_file: unused_element, unnecessary_cast

import 'backend_service_locality_load_balancing_policy_config_policy_name_compute_v1.dart';

/// The configuration for a built-in load balancing policy.
class BackendServiceLocalityLoadBalancingPolicyConfigPolicyComputeV1 {
  /// The name of a locality load-balancing policy. Valid values include ROUND_ROBIN and, for Java clients, LEAST_REQUEST. For information about these values, see the description of localityLbPolicy. Do not specify the same policy more than once for a backend. If you do, the configuration is rejected.
  final BackendServiceLocalityLoadBalancingPolicyConfigPolicyNameComputeV1?
  name;

  /// Creates a new [BackendServiceLocalityLoadBalancingPolicyConfigPolicyComputeV1].
  /// [name] The name of a locality load-balancing policy. Valid values include ROUND_ROBIN and, for Java clients, LEAST_REQUEST. For information about these values, see the description of localityLbPolicy. Do not specify the same policy more than once for a backend. If you do, the configuration is rejected.
  BackendServiceLocalityLoadBalancingPolicyConfigPolicyComputeV1({this.name});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name == null ? null : name!.value};
  }

  factory BackendServiceLocalityLoadBalancingPolicyConfigPolicyComputeV1.fromMap(
    Map<String, dynamic> map,
  ) {
    return BackendServiceLocalityLoadBalancingPolicyConfigPolicyComputeV1(
      name: map['name'] == null
          ? null
          : BackendServiceLocalityLoadBalancingPolicyConfigPolicyNameComputeV1.fromValue(
              map['name'] as String,
            ),
    );
  }
}
