// ignore_for_file: unused_element, unnecessary_cast

class NetworkFirewallPolicyPacketMirroringRuleTargetSecureTag {
  /// Name of the secure tag, created with TagManager's TagValue API.
  /// diff_suppress_func: 'tpgresource.CompareSelfLinkOrResourceName'
  final String? name;

  /// (Output)
  /// State of the secure tag, either EFFECTIVE or INEFFECTIVE. A secure tag is INEFFECTIVE when it is deleted or its network is deleted.
  final String? state;

  NetworkFirewallPolicyPacketMirroringRuleTargetSecureTag({
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

  factory NetworkFirewallPolicyPacketMirroringRuleTargetSecureTag.fromMap(
      Map<String, dynamic> map) {
    return NetworkFirewallPolicyPacketMirroringRuleTargetSecureTag(
      name: map['name'] == null ? null : map['name'] as String,
      state: map['state'] == null ? null : map['state'] as String,
    );
  }
}
