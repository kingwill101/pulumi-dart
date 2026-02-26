// ignore_for_file: unused_element, unnecessary_cast

class FirewallPolicyFirewallPolicyStatelessRuleGroupReference {
  /// An integer setting that indicates the order in which to run the stateless rule groups in a single policy. AWS Network Firewall applies each stateless rule group to a packet starting with the group that has the lowest priority setting.
  final int priority;

  /// The Amazon Resource Name (ARN) of the stateless rule group.
  final String resourceArn;

  FirewallPolicyFirewallPolicyStatelessRuleGroupReference({
    required this.priority,
    required this.resourceArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['priority'] = priority;
    map['resourceArn'] = resourceArn;
    return map;
  }

  factory FirewallPolicyFirewallPolicyStatelessRuleGroupReference.fromMap(
      Map<String, dynamic> map) {
    return FirewallPolicyFirewallPolicyStatelessRuleGroupReference(
      priority: map['priority'] as int,
      resourceArn: map['resourceArn'] as String,
    );
  }
}
