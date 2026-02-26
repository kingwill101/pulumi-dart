// ignore_for_file: unused_element, unnecessary_cast

class GetFirewallPolicyFirewallPolicyStatelessRuleGroupReference {
  final int priority;
  final String resourceArn;

  GetFirewallPolicyFirewallPolicyStatelessRuleGroupReference({
    required this.priority,
    required this.resourceArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['priority'] = priority;
    map['resourceArn'] = resourceArn;
    return map;
  }

  factory GetFirewallPolicyFirewallPolicyStatelessRuleGroupReference.fromMap(
      Map<String, dynamic> map) {
    return GetFirewallPolicyFirewallPolicyStatelessRuleGroupReference(
      priority: map['priority'] as int,
      resourceArn: map['resourceArn'] as String,
    );
  }
}
