// ignore_for_file: unused_element, unnecessary_cast


class GetSecurityPoliciesPolicy {
  /// The supported cipher suites, which are determined by the TLS protocol version.
  final List<String> ciphers;
  /// The ID of the Security Policy.
  final String id;
  /// The ID of the resource group.
  final String resourceGroupId;
  /// The first ID of the resource.
  final String securityPolicyId;
  /// The name of the resource. The name must be 2 to 128 characters in length and must start with a letter. It can contain digits, periods (.), underscores (_), and hyphens (-).
  final String securityPolicyName;
  /// The status of the resource.
  final String status;
  /// The TLS protocol versions that are supported. Valid values: TLSv1.0, TLSv1.1, TLSv1.2 and TLSv1.3.
  final List<String> tlsVersions;

  /// Creates a new [GetSecurityPoliciesPolicy].
  /// [ciphers] The supported cipher suites, which are determined by the TLS protocol version.
  /// [id] The ID of the Security Policy.
  /// [resourceGroupId] The ID of the resource group.
  /// [securityPolicyId] The first ID of the resource.
  /// [securityPolicyName] The name of the resource. The name must be 2 to 128 characters in length and must start with a letter. It can contain digits, periods (.), underscores (_), and hyphens (-).
  /// [status] The status of the resource.
  /// [tlsVersions] The TLS protocol versions that are supported. Valid values: TLSv1.0, TLSv1.1, TLSv1.2 and TLSv1.3.
  GetSecurityPoliciesPolicy({
    required this.ciphers,
    required this.id,
    required this.resourceGroupId,
    required this.securityPolicyId,
    required this.securityPolicyName,
    required this.status,
    required this.tlsVersions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ciphers': ciphers,
      'id': id,
      'resourceGroupId': resourceGroupId,
      'securityPolicyId': securityPolicyId,
      'securityPolicyName': securityPolicyName,
      'status': status,
      'tlsVersions': tlsVersions,
    };
  }

  factory GetSecurityPoliciesPolicy.fromMap(Map<String, dynamic> map) {
    return GetSecurityPoliciesPolicy(
      ciphers: (map['ciphers'] as List).cast<String>(),
      id: map['id'] as String,
      resourceGroupId: map['resourceGroupId'] as String,
      securityPolicyId: map['securityPolicyId'] as String,
      securityPolicyName: map['securityPolicyName'] as String,
      status: map['status'] as String,
      tlsVersions: (map['tlsVersions'] as List).cast<String>(),
    );
  }
}

