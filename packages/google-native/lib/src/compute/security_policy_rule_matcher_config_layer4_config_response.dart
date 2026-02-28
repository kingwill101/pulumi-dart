// ignore_for_file: unused_element, unnecessary_cast


class SecurityPolicyRuleMatcherConfigLayer4ConfigResponse {
  /// The IP protocol to which this rule applies. The protocol type is required when creating a firewall rule. This value can either be one of the following well known protocol strings (tcp, udp, icmp, esp, ah, ipip, sctp), or the IP protocol number.
  final String ipProtocol;
  /// An optional list of ports to which this rule applies. This field is only applicable for UDP or TCP protocol. Each entry must be either an integer or a range. If not specified, this rule applies to connections through any port. Example inputs include: ["22"], ["80","443"], and ["12345-12349"]. This field may only be specified when versioned_expr is set to FIREWALL.
  final List<String> ports;

  /// Creates a new [SecurityPolicyRuleMatcherConfigLayer4ConfigResponse].
  /// [ipProtocol] The IP protocol to which this rule applies. The protocol type is required when creating a firewall rule. This value can either be one of the following well known protocol strings (tcp, udp, icmp, esp, ah, ipip, sctp), or the IP protocol number.
  /// [ports] An optional list of ports to which this rule applies. This field is only applicable for UDP or TCP protocol. Each entry must be either an integer or a range. If not specified, this rule applies to connections through any port. Example inputs include: ["22"], ["80","443"], and ["12345-12349"]. This field may only be specified when versioned_expr is set to FIREWALL.
  SecurityPolicyRuleMatcherConfigLayer4ConfigResponse({
    required this.ipProtocol,
    required this.ports,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ipProtocol': ipProtocol,
      'ports': ports,
    };
  }

  factory SecurityPolicyRuleMatcherConfigLayer4ConfigResponse.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRuleMatcherConfigLayer4ConfigResponse(
      ipProtocol: map['ipProtocol'] as String,
      ports: (map['ports'] as List).cast<String>(),
    );
  }
}

