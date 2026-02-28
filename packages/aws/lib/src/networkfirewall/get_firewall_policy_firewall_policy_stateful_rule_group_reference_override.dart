// ignore_for_file: unused_element, unnecessary_cast

class GetFirewallPolicyFirewallPolicyStatefulRuleGroupReferenceOverride {
  final String action;

  /// Creates a new [GetFirewallPolicyFirewallPolicyStatefulRuleGroupReferenceOverride].
  /// [action] Required.
  GetFirewallPolicyFirewallPolicyStatefulRuleGroupReferenceOverride({
    required this.action,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['action'] = action;
    return map;
  }

  factory GetFirewallPolicyFirewallPolicyStatefulRuleGroupReferenceOverride.fromMap(
      Map<String, dynamic> map) {
    return GetFirewallPolicyFirewallPolicyStatefulRuleGroupReferenceOverride(
      action: map['action'] as String,
    );
  }
}
