// ignore_for_file: unused_element, unnecessary_cast

class SecurityPolicyRuleMatcherConfig3 {
  /// CIDR IP address range. Maximum number of src_ip_ranges allowed is 10.
  final List<String>? srcIpRanges;

  SecurityPolicyRuleMatcherConfig3({
    this.srcIpRanges,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final srcIpRangesValue = srcIpRanges;
    if (srcIpRangesValue != null) {
      map['srcIpRanges'] = srcIpRangesValue;
    }
    return map;
  }

  factory SecurityPolicyRuleMatcherConfig3.fromMap(Map<String, dynamic> map) {
    return SecurityPolicyRuleMatcherConfig3(
      srcIpRanges: map['srcIpRanges'] == null
          ? null
          : (map['srcIpRanges'] as List).cast<String>(),
    );
  }
}
