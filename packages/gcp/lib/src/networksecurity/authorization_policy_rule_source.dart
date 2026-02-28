// ignore_for_file: unused_element, unnecessary_cast


class AuthorizationPolicyRuleSource {
  /// List of CIDR ranges to match based on source IP address. At least one IP block should match. Single IP (e.g., "1.2.3.4") and CIDR (e.g., "1.2.3.0/24") are supported. Authorization based on source IP alone should be avoided.
  /// The IP addresses of any load balancers or proxies should be considered untrusted.
  final List<String>? ipBlocks;
  /// List of peer identities to match for authorization. At least one principal should match. Each peer can be an exact match, or a prefix match (example, "namespace/*") or a suffix match (example, "*/service-account") or a presence match "*".
  /// Authorization based on the principal name without certificate validation (configured by ServerTlsPolicy resource) is considered insecure.
  final List<String>? principals;

  /// Creates a new [AuthorizationPolicyRuleSource].
  /// [ipBlocks] List of CIDR ranges to match based on source IP address. At least one IP block should match. Single IP (e.g., "1.2.3.4") and CIDR (e.g., "1.2.3.0/24") are supported. Authorization based on source IP alone should be avoided.
  /// [principals] List of peer identities to match for authorization. At least one principal should match. Each peer can be an exact match, or a prefix match (example, "namespace/*") or a suffix match (example, "*/service-account") or a presence match "*".
  AuthorizationPolicyRuleSource({
    this.ipBlocks,
    this.principals,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipBlocks': ?ipBlocks,
      'principals': ?principals,
    };
  }

  factory AuthorizationPolicyRuleSource.fromMap(Map<String, dynamic> map) {
    return AuthorizationPolicyRuleSource(
      ipBlocks: map['ipBlocks'] == null ? null : (map['ipBlocks'] as List).cast<String>(),
      principals: map['principals'] == null ? null : (map['principals'] as List).cast<String>(),
    );
  }
}

