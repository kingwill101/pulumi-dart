// ignore_for_file: unused_element, unnecessary_cast

/// The configuration for a built-in load balancing policy.
class BackendServiceLocalityLoadBalancingPolicyConfigPolicyResponseComputeBeta {
  /// The name of a locality load-balancing policy. Valid values include ROUND_ROBIN and, for Java clients, LEAST_REQUEST. For information about these values, see the description of localityLbPolicy. Do not specify the same policy more than once for a backend. If you do, the configuration is rejected.
  final String name;

  /// Creates a new [BackendServiceLocalityLoadBalancingPolicyConfigPolicyResponseComputeBeta].
  /// [name] The name of a locality load-balancing policy. Valid values include ROUND_ROBIN and, for Java clients, LEAST_REQUEST. For information about these values, see the description of localityLbPolicy. Do not specify the same policy more than once for a backend. If you do, the configuration is rejected.
  BackendServiceLocalityLoadBalancingPolicyConfigPolicyResponseComputeBeta({
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': name};
  }

  factory BackendServiceLocalityLoadBalancingPolicyConfigPolicyResponseComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return BackendServiceLocalityLoadBalancingPolicyConfigPolicyResponseComputeBeta(
      name: map['name'] as String,
    );
  }
}
