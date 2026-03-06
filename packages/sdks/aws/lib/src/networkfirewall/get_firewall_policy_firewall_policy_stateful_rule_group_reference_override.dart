// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetFirewallPolicyFirewallPolicyStatefulRuleGroupReferenceOverride {
  final pulumi.Input<String> action;

  /// Creates a new [GetFirewallPolicyFirewallPolicyStatefulRuleGroupReferenceOverride].
  /// [action] Required.
  const GetFirewallPolicyFirewallPolicyStatefulRuleGroupReferenceOverride({
    required this.action,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
    };
  }

  factory GetFirewallPolicyFirewallPolicyStatefulRuleGroupReferenceOverride.fromMap(Map<String, dynamic> map) {
    return GetFirewallPolicyFirewallPolicyStatefulRuleGroupReferenceOverride(
      action: pulumi.Input.fromValue(map['action'] as String),
    );
  }
}

