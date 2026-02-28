// ignore_for_file: unused_element, unnecessary_cast

/// The configuration for a built-in load balancing policy.
class BackendServiceLocalityLoadBalancingPolicyConfigPolicyResponse {
  /// The name of a locality load-balancing policy. Valid values include ROUND_ROBIN and, for Java clients, LEAST_REQUEST. For information about these values, see the description of localityLbPolicy. Do not specify the same policy more than once for a backend. If you do, the configuration is rejected.
  final String name;

  /// Creates a new [BackendServiceLocalityLoadBalancingPolicyConfigPolicyResponse].
  /// [name] The name of a locality load-balancing policy. Valid values include ROUND_ROBIN and, for Java clients, LEAST_REQUEST. For information about these values, see the description of localityLbPolicy. Do not specify the same policy more than once for a backend. If you do, the configuration is rejected.
  BackendServiceLocalityLoadBalancingPolicyConfigPolicyResponse({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['name'] = name;
    return map;
  }

  factory BackendServiceLocalityLoadBalancingPolicyConfigPolicyResponse.fromMap(
      Map<String, dynamic> map) {
    return BackendServiceLocalityLoadBalancingPolicyConfigPolicyResponse(
      name: map['name'] as String,
    );
  }
}
