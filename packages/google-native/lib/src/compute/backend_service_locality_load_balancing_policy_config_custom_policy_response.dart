// ignore_for_file: unused_element, unnecessary_cast

/// The configuration for a custom policy implemented by the user and deployed with the client.
class BackendServiceLocalityLoadBalancingPolicyConfigCustomPolicyResponse {
  /// An optional, arbitrary JSON object with configuration data, understood by a locally installed custom policy implementation.
  final String data;

  /// Identifies the custom policy. The value should match the name of a custom implementation registered on the gRPC clients. It should follow protocol buffer message naming conventions and include the full path (for example, myorg.CustomLbPolicy). The maximum length is 256 characters. Do not specify the same custom policy more than once for a backend. If you do, the configuration is rejected. For an example of how to use this field, see Use a custom policy.
  final String name;

  /// Creates a new [BackendServiceLocalityLoadBalancingPolicyConfigCustomPolicyResponse].
  /// [data] An optional, arbitrary JSON object with configuration data, understood by a locally installed custom policy implementation.
  /// [name] Identifies the custom policy. The value should match the name of a custom implementation registered on the gRPC clients. It should follow protocol buffer message naming conventions and include the full path (for example, myorg.CustomLbPolicy). The maximum length is 256 characters. Do not specify the same custom policy more than once for a backend. If you do, the configuration is rejected. For an example of how to use this field, see Use a custom policy.
  BackendServiceLocalityLoadBalancingPolicyConfigCustomPolicyResponse({
    required this.data,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['data'] = data;
    map['name'] = name;
    return map;
  }

  factory BackendServiceLocalityLoadBalancingPolicyConfigCustomPolicyResponse.fromMap(
      Map<String, dynamic> map) {
    return BackendServiceLocalityLoadBalancingPolicyConfigCustomPolicyResponse(
      data: map['data'] as String,
      name: map['name'] as String,
    );
  }
}
