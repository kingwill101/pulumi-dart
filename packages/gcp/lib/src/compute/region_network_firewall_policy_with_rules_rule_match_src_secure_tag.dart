// ignore_for_file: unused_element, unnecessary_cast

class RegionNetworkFirewallPolicyWithRulesRuleMatchSrcSecureTag {
  /// Name of the secure tag, created with TagManager's TagValue API.
  /// @pattern tagValues/[0-9]+
  final String? name;

  /// (Output)
  /// [Output Only] State of the secure tag, either `EFFECTIVE` or
  /// `INEFFECTIVE`. A secure tag is `INEFFECTIVE` when it is deleted
  /// or its network is deleted.
  final String? state;

  /// Creates a new [RegionNetworkFirewallPolicyWithRulesRuleMatchSrcSecureTag].
  /// [name] Name of the secure tag, created with TagManager's TagValue API.
  /// [state] (Output)
  RegionNetworkFirewallPolicyWithRulesRuleMatchSrcSecureTag({
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

  factory RegionNetworkFirewallPolicyWithRulesRuleMatchSrcSecureTag.fromMap(
      Map<String, dynamic> map) {
    return RegionNetworkFirewallPolicyWithRulesRuleMatchSrcSecureTag(
      name: map['name'] == null ? null : map['name'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}
