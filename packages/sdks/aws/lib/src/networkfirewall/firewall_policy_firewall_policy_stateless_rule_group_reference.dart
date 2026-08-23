// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirewallPolicyFirewallPolicyStatelessRuleGroupReference {
  /// An integer setting that indicates the order in which to run the stateless rule groups in a single policy. AWS Network Firewall applies each stateless rule group to a packet starting with the group that has the lowest priority setting.
  final pulumi.Input<int> priority;
  /// The Amazon Resource Name (ARN) of the stateless rule group.
  final pulumi.Input<String> resourceArn;

  /// Creates a new [FirewallPolicyFirewallPolicyStatelessRuleGroupReference].
  /// [priority] An integer setting that indicates the order in which to run the stateless rule groups in a single policy. AWS Network Firewall applies each stateless rule group to a packet starting with the group that has the lowest priority setting.
  /// [resourceArn] The Amazon Resource Name (ARN) of the stateless rule group.
  const FirewallPolicyFirewallPolicyStatelessRuleGroupReference({
    required this.priority,
    required this.resourceArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'priority': priority,
      'resourceArn': resourceArn,
    };
  }

  factory FirewallPolicyFirewallPolicyStatelessRuleGroupReference.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyFirewallPolicyStatelessRuleGroupReference(
      priority: pulumi.Input.fromValue(map['priority'] as int),
      resourceArn: pulumi.Input.fromValue(map['resourceArn'] as String),
    );
  }
}
