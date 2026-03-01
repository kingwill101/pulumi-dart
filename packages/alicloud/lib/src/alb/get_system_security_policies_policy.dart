// ignore_for_file: unused_element, unnecessary_cast


class GetSystemSecurityPoliciesPolicy {
  /// The supported cipher suites, which are determined by the TLS protocol version.
  final List<String> ciphers;
  /// The ID of the Security Policy.
  final String id;
  /// The first ID of the resource.
  final String securityPolicyId;
  /// The TLS protocol versions are supported. Valid values: TLSv1.0, TLSv1.1, TLSv1.2 and TLSv1.3.
  final List<String> tlsVersions;

  /// Creates a new [GetSystemSecurityPoliciesPolicy].
  /// [ciphers] The supported cipher suites, which are determined by the TLS protocol version.
  /// [id] The ID of the Security Policy.
  /// [securityPolicyId] The first ID of the resource.
  /// [tlsVersions] The TLS protocol versions are supported. Valid values: TLSv1.0, TLSv1.1, TLSv1.2 and TLSv1.3.
  GetSystemSecurityPoliciesPolicy({
    required this.ciphers,
    required this.id,
    required this.securityPolicyId,
    required this.tlsVersions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ciphers': ciphers,
      'id': id,
      'securityPolicyId': securityPolicyId,
      'tlsVersions': tlsVersions,
    };
  }

  factory GetSystemSecurityPoliciesPolicy.fromMap(Map<String, dynamic> map) {
    return GetSystemSecurityPoliciesPolicy(
      ciphers: (map['ciphers'] as List).cast<String>(),
      id: map['id'] as String,
      securityPolicyId: map['securityPolicyId'] as String,
      tlsVersions: (map['tlsVersions'] as List).cast<String>(),
    );
  }
}

