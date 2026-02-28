// ignore_for_file: unused_element, unnecessary_cast

class RegionNetworkFirewallPolicyRuleMatchSrcSecureTag {
  /// Name of the secure tag, created with TagManager's TagValue API.
  final String? name;

  /// (Output)
  /// State of the secure tag, either EFFECTIVE or INEFFECTIVE. A secure tag is INEFFECTIVE when it is deleted or its network is deleted.
  final String? state;

  /// Creates a new [RegionNetworkFirewallPolicyRuleMatchSrcSecureTag].
  /// [name] Name of the secure tag, created with TagManager's TagValue API.
  /// [state] (Output)
  RegionNetworkFirewallPolicyRuleMatchSrcSecureTag({
    this.name,
    this.state,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final stateValue = state;
    if (stateValue != null) {
      map['state'] = stateValue;
    }
    return map;
  }

  factory RegionNetworkFirewallPolicyRuleMatchSrcSecureTag.fromMap(
      Map<String, dynamic> map) {
    return RegionNetworkFirewallPolicyRuleMatchSrcSecureTag(
      name: map['name'] == null ? null : map['name'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}
