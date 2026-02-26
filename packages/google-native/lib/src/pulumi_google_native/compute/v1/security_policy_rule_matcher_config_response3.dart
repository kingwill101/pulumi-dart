// ignore_for_file: unused_element, unnecessary_cast

class SecurityPolicyRuleMatcherConfigResponse3 {
  /// CIDR IP address range. Maximum number of src_ip_ranges allowed is 10.
  final List<String> srcIpRanges;

  SecurityPolicyRuleMatcherConfigResponse3({
    required this.srcIpRanges,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['srcIpRanges'] = srcIpRanges;
    return map;
  }

  factory SecurityPolicyRuleMatcherConfigResponse3.fromMap(
      Map<String, dynamic> map) {
    return SecurityPolicyRuleMatcherConfigResponse3(
      srcIpRanges: (map['srcIpRanges'] as List).cast<String>(),
    );
  }
}
