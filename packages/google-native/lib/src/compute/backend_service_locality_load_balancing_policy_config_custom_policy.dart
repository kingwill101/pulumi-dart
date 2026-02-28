// ignore_for_file: unused_element, unnecessary_cast


/// The configuration for a custom policy implemented by the user and deployed with the client.
class BackendServiceLocalityLoadBalancingPolicyConfigCustomPolicy {
  /// An optional, arbitrary JSON object with configuration data, understood by a locally installed custom policy implementation.
  final String? data;
  /// Identifies the custom policy. The value should match the name of a custom implementation registered on the gRPC clients. It should follow protocol buffer message naming conventions and include the full path (for example, myorg.CustomLbPolicy). The maximum length is 256 characters. Do not specify the same custom policy more than once for a backend. If you do, the configuration is rejected. For an example of how to use this field, see Use a custom policy.
  final String? name;

  /// Creates a new [BackendServiceLocalityLoadBalancingPolicyConfigCustomPolicy].
  /// [data] An optional, arbitrary JSON object with configuration data, understood by a locally installed custom policy implementation.
  /// [name] Identifies the custom policy. The value should match the name of a custom implementation registered on the gRPC clients. It should follow protocol buffer message naming conventions and include the full path (for example, myorg.CustomLbPolicy). The maximum length is 256 characters. Do not specify the same custom policy more than once for a backend. If you do, the configuration is rejected. For an example of how to use this field, see Use a custom policy.
  BackendServiceLocalityLoadBalancingPolicyConfigCustomPolicy({
    this.data,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'data': ?data,
      'name': ?name,
    };
  }

  factory BackendServiceLocalityLoadBalancingPolicyConfigCustomPolicy.fromMap(Map<String, dynamic> map) {
    return BackendServiceLocalityLoadBalancingPolicyConfigCustomPolicy(
      data: map['data'] == null ? null : map['data'] as String,
      name: map['name'] == null ? null : map['name'] as String,
    );
  }
}

