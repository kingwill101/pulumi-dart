// ignore_for_file: unused_element, unnecessary_cast


/// Description of NetWorkRuleSet - IpRules resource.
class NWRuleSetIpRulesResponse {
  /// The IP Filter Action
  final String? action;
  /// IP Mask
  final String? ipMask;

  /// Creates a new [NWRuleSetIpRulesResponse].
  /// [action] The IP Filter Action
  /// [ipMask] IP Mask
  NWRuleSetIpRulesResponse({
    this.action,
    this.ipMask,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
      'ipMask': ?ipMask,
    };
  }

  factory NWRuleSetIpRulesResponse.fromMap(Map<String, dynamic> map) {
    return NWRuleSetIpRulesResponse(
      action: map['action'] == null ? null : map['action'] as String,
      ipMask: map['ipMask'] == null ? null : map['ipMask'] as String,
    );
  }
}

