// ignore_for_file: unused_element, unnecessary_cast


class NetworkFirewallPolicyRuleMatchSrcSecureTag {
  /// Name of the secure tag, created with TagManager's TagValue API.
  final String? name;
  /// (Output)
  /// State of the secure tag, either EFFECTIVE or INEFFECTIVE. A secure tag is INEFFECTIVE when it is deleted or its network is deleted.
  final String? state;

  /// Creates a new [NetworkFirewallPolicyRuleMatchSrcSecureTag].
  /// [name] Name of the secure tag, created with TagManager's TagValue API.
  /// [state] (Output)
  NetworkFirewallPolicyRuleMatchSrcSecureTag({
    this.name,
    this.state,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'state': ?state,
    };
  }

  factory NetworkFirewallPolicyRuleMatchSrcSecureTag.fromMap(Map<String, dynamic> map) {
    return NetworkFirewallPolicyRuleMatchSrcSecureTag(
      name: map['name'] == null ? null : map['name'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}

