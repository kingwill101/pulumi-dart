// ignore_for_file: unused_element, unnecessary_cast

class FirewallPolicyFirewallPolicyStatefulRuleGroupReferenceOverride {
  /// The action that changes the rule group from DROP to ALERT . This only applies to managed rule groups.
  final String? action;

  /// Creates a new [FirewallPolicyFirewallPolicyStatefulRuleGroupReferenceOverride].
  /// [action] The action that changes the rule group from DROP to ALERT . This only applies to managed rule groups.
  FirewallPolicyFirewallPolicyStatefulRuleGroupReferenceOverride({this.action});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'action': ?action};
  }

  factory FirewallPolicyFirewallPolicyStatefulRuleGroupReferenceOverride.fromMap(
    Map<String, dynamic> map,
  ) {
    return FirewallPolicyFirewallPolicyStatefulRuleGroupReferenceOverride(
      action: map['action'] == null ? null : map['action'] as String,
    );
  }
}
