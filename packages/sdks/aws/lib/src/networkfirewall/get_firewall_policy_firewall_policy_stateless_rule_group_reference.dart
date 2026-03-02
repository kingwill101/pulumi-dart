// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFirewallPolicyFirewallPolicyStatelessRuleGroupReference {
  final pulumi.Input<int> priority;
  final pulumi.Input<String> resourceArn;

  /// Creates a new [GetFirewallPolicyFirewallPolicyStatelessRuleGroupReference].
  /// [priority] Required.
  /// [resourceArn] Required.
  GetFirewallPolicyFirewallPolicyStatelessRuleGroupReference({
    required this.priority,
    required this.resourceArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'priority': priority,
      'resourceArn': resourceArn,
    };
  }

  factory GetFirewallPolicyFirewallPolicyStatelessRuleGroupReference.fromMap(Map<String, dynamic> map) {
    return GetFirewallPolicyFirewallPolicyStatelessRuleGroupReference(
      priority: (map['priority'] as int).input(),
      resourceArn: (map['resourceArn'] as String).input(),
    );
  }
}

