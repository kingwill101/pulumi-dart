// ignore_for_file: unused_element, unnecessary_cast


class SecurityPolicyRuleMatchConfig {
  /// CIDR IP address range. Maximum number of srcIpRanges allowed is 10.
  final List<String>? srcIpRanges;

  /// Creates a new [SecurityPolicyRuleMatchConfig].
  /// [srcIpRanges] CIDR IP address range. Maximum number of srcIpRanges allowed is 10.
  SecurityPolicyRuleMatchConfig({
    this.srcIpRanges,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'srcIpRanges': ?srcIpRanges,
    };
  }

  factory SecurityPolicyRuleMatchConfig.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRuleMatchConfig(
      srcIpRanges: map['srcIpRanges'] == null ? null : (map['srcIpRanges'] as List).cast<String>(),
    );
  }
}

