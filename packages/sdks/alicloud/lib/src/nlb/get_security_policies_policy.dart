// ignore_for_file: unused_element, unnecessary_cast


class GetSecurityPoliciesPolicy {
  /// The supported cipher suites, which are determined by the TLS protocol version.
  final List<String> ciphers;
  /// The id of the TLS security policy.
  final String id;
  /// The ID of the resource group.
  final String resourceGroupId;
  /// The name of the TLS security policy.
  final String securityPolicyName;
  /// The status of the resource.
  final String status;
  /// A mapping of tags to assign to the resource.
  final Map<String, String> tags;
  /// The TLS protocol versions that are supported.
  final List<String> tlsVersions;

  /// Creates a new [GetSecurityPoliciesPolicy].
  /// [ciphers] The supported cipher suites, which are determined by the TLS protocol version.
  /// [id] The id of the TLS security policy.
  /// [resourceGroupId] The ID of the resource group.
  /// [securityPolicyName] The name of the TLS security policy.
  /// [status] The status of the resource.
  /// [tags] A mapping of tags to assign to the resource.
  /// [tlsVersions] The TLS protocol versions that are supported.
  GetSecurityPoliciesPolicy({
    required this.ciphers,
    required this.id,
    required this.resourceGroupId,
    required this.securityPolicyName,
    required this.status,
    required this.tags,
    required this.tlsVersions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ciphers': ciphers,
      'id': id,
      'resourceGroupId': resourceGroupId,
      'securityPolicyName': securityPolicyName,
      'status': status,
      'tags': tags,
      'tlsVersions': tlsVersions,
    };
  }

  factory GetSecurityPoliciesPolicy.fromMap(Map<String, dynamic> map) {
    return GetSecurityPoliciesPolicy(
      ciphers: (map['ciphers'] as List).cast<String>(),
      id: map['id'] as String,
      resourceGroupId: map['resourceGroupId'] as String,
      securityPolicyName: map['securityPolicyName'] as String,
      status: map['status'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      tlsVersions: (map['tlsVersions'] as List).cast<String>(),
    );
  }
}

