// ignore_for_file: unused_element, unnecessary_cast

/// Result data returned by getGatewaySecurityPolicy.
class GetGatewaySecurityPolicyResult {
  /// The timestamp when the resource was created.
  final String createTime;

  /// Optional. Free-text description of the resource.
  final String description;

  /// Name of the resource. Name is of the form projects/{project}/locations/{location}/gatewaySecurityPolicies/{gateway_security_policy} gateway_security_policy should match the pattern:(^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$).
  final String name;

  /// Optional. Name of a TLS Inspection Policy resource that defines how TLS inspection will be performed for any rule(s) which enables it.
  final String tlsInspectionPolicy;

  /// The timestamp when the resource was updated.
  final String updateTime;

  /// Creates a new [GetGatewaySecurityPolicyResult].
  /// [createTime] The timestamp when the resource was created.
  /// [description] Optional. Free-text description of the resource.
  /// [name] Name of the resource. Name is of the form projects/{project}/locations/{location}/gatewaySecurityPolicies/{gateway_security_policy} gateway_security_policy should match the pattern:(^[a-z]([a-z0-9-]{0,61}[a-z0-9])?$).
  /// [tlsInspectionPolicy] Optional. Name of a TLS Inspection Policy resource that defines how TLS inspection will be performed for any rule(s) which enables it.
  /// [updateTime] The timestamp when the resource was updated.
  GetGatewaySecurityPolicyResult({
    required this.createTime,
    required this.description,
    required this.name,
    required this.tlsInspectionPolicy,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['description'] = description;
    map['name'] = name;
    map['tlsInspectionPolicy'] = tlsInspectionPolicy;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetGatewaySecurityPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetGatewaySecurityPolicyResult(
      createTime: map['createTime'] as String,
      description: map['description'] as String,
      name: map['name'] as String,
      tlsInspectionPolicy: map['tlsInspectionPolicy'] as String,
      updateTime: map['updateTime'] as String,
    );
  }
}
