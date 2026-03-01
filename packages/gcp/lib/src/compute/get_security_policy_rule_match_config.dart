// ignore_for_file: unused_element, unnecessary_cast

class GetSecurityPolicyRuleMatchConfig {
  /// Set of IP addresses or ranges (IPV4 or IPV6) in CIDR notation to match against inbound traffic. There is a limit of 10 IP ranges per rule. A value of '*' matches all IPs (can be used to override the default behavior).
  final List<String> srcIpRanges;

  /// Creates a new [GetSecurityPolicyRuleMatchConfig].
  /// [srcIpRanges] Set of IP addresses or ranges (IPV4 or IPV6) in CIDR notation to match against inbound traffic. There is a limit of 10 IP ranges per rule. A value of '*' matches all IPs (can be used to override the default behavior).
  GetSecurityPolicyRuleMatchConfig({required this.srcIpRanges});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'srcIpRanges': srcIpRanges};
  }

  factory GetSecurityPolicyRuleMatchConfig.fromMap(Map<String, dynamic> map) {
    return GetSecurityPolicyRuleMatchConfig(
      srcIpRanges: (map['srcIpRanges'] as List).cast<String>(),
    );
  }
}
