// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FirewallPolicyFirewallPolicyStatefulRuleGroupReferenceOverride {
  /// The action that changes the rule group from DROP to ALERT . This only applies to managed rule groups.
  final pulumi.Input<String>? action;

  /// Creates a new [FirewallPolicyFirewallPolicyStatefulRuleGroupReferenceOverride].
  /// [action] The action that changes the rule group from DROP to ALERT . This only applies to managed rule groups.
  FirewallPolicyFirewallPolicyStatefulRuleGroupReferenceOverride({
    this.action,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': ?action,
    };
  }

  factory FirewallPolicyFirewallPolicyStatefulRuleGroupReferenceOverride.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyFirewallPolicyStatefulRuleGroupReferenceOverride(
      action: (() { final guardedValue = map['action']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

