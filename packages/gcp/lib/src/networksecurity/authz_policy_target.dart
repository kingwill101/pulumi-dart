// ignore_for_file: unused_element, unnecessary_cast

class AuthzPolicyTarget {
  /// All gateways and forwarding rules referenced by this policy and extensions must share the same load balancing scheme.
  /// For more information, refer to [Backend services overview](https://cloud.google.com/load-balancing/docs/backend-service).
  /// Possible values are: `INTERNAL_MANAGED`, `EXTERNAL_MANAGED`, `INTERNAL_SELF_MANAGED`.
  final String loadBalancingScheme;

  /// A list of references to the Forwarding Rules on which this policy will be applied.
  final List<String>? resources;

  /// Creates a new [AuthzPolicyTarget].
  /// [loadBalancingScheme] All gateways and forwarding rules referenced by this policy and extensions must share the same load balancing scheme.
  /// [resources] A list of references to the Forwarding Rules on which this policy will be applied.
  AuthzPolicyTarget({required this.loadBalancingScheme, this.resources});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'loadBalancingScheme': loadBalancingScheme,
      'resources': ?resources,
    };
  }

  factory AuthzPolicyTarget.fromMap(Map<String, dynamic> map) {
    return AuthzPolicyTarget(
      loadBalancingScheme: map['loadBalancingScheme'] as String,
      resources: map['resources'] == null
          ? null
          : (map['resources'] as List).cast<String>(),
    );
  }
}
