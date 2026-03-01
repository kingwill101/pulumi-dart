// ignore_for_file: unused_element, unnecessary_cast

class GetFirewallPolicyFirewallPolicyStatelessRuleGroupReference {
  final int priority;
  final String resourceArn;

  /// Creates a new [GetFirewallPolicyFirewallPolicyStatelessRuleGroupReference].
  /// [priority] Required.
  /// [resourceArn] Required.
  GetFirewallPolicyFirewallPolicyStatelessRuleGroupReference({
    required this.priority,
    required this.resourceArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'priority': priority, 'resourceArn': resourceArn};
  }

  factory GetFirewallPolicyFirewallPolicyStatelessRuleGroupReference.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetFirewallPolicyFirewallPolicyStatelessRuleGroupReference(
      priority: map['priority'] as int,
      resourceArn: map['resourceArn'] as String,
    );
  }
}
