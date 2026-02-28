// ignore_for_file: unused_element, unnecessary_cast

class RegionSecurityPolicyRuleMatchConfig {
  /// CIDR IP address range. Maximum number of srcIpRanges allowed is 10.
  final List<String>? srcIpRanges;

  /// Creates a new [RegionSecurityPolicyRuleMatchConfig].
  /// [srcIpRanges] CIDR IP address range. Maximum number of srcIpRanges allowed is 10.
  RegionSecurityPolicyRuleMatchConfig({
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

  factory RegionSecurityPolicyRuleMatchConfig.fromMap(
      Map<String, dynamic> map) {
    return RegionSecurityPolicyRuleMatchConfig(
      srcIpRanges: map['srcIpRanges'] == null
          ? null
          : (map['srcIpRanges'] as List).cast<String>(),
    );
  }
}
