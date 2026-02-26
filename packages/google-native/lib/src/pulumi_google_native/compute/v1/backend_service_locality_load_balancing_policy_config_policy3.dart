// ignore_for_file: unused_element, unnecessary_cast

import 'backend_service_locality_load_balancing_policy_config_policy_name3.dart';

/// The configuration for a built-in load balancing policy.
class BackendServiceLocalityLoadBalancingPolicyConfigPolicy3 {
  /// The name of a locality load-balancing policy. Valid values include ROUND_ROBIN and, for Java clients, LEAST_REQUEST. For information about these values, see the description of localityLbPolicy. Do not specify the same policy more than once for a backend. If you do, the configuration is rejected.
  final BackendServiceLocalityLoadBalancingPolicyConfigPolicyName3? name;

  BackendServiceLocalityLoadBalancingPolicyConfigPolicy3({
    this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue.value;
    }
    return map;
  }

  factory BackendServiceLocalityLoadBalancingPolicyConfigPolicy3.fromMap(
      Map<String, dynamic> map) {
    return BackendServiceLocalityLoadBalancingPolicyConfigPolicy3(
      name: map['name'] == null
          ? null
          : BackendServiceLocalityLoadBalancingPolicyConfigPolicyName3
              .fromValue(map['name'] as String),
    );
  }
}
