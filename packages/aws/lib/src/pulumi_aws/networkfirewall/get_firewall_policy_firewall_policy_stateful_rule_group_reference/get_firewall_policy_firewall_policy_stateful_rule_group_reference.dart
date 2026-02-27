// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_firewall_policy_firewall_policy_stateful_rule_group_reference_override/get_firewall_policy_firewall_policy_stateful_rule_group_reference_override.dart';

class GetFirewallPolicyFirewallPolicyStatefulRuleGroupReference {
  final String deepThreatInspection;
  final List<GetFirewallPolicyFirewallPolicyStatefulRuleGroupReferenceOverride>
      overrides;
  final int priority;
  final String resourceArn;

  GetFirewallPolicyFirewallPolicyStatefulRuleGroupReference({
    required this.deepThreatInspection,
    required this.overrides,
    required this.priority,
    required this.resourceArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['deepThreatInspection'] = deepThreatInspection;
    map['overrides'] = pulumi.Input.encodeList<
        GetFirewallPolicyFirewallPolicyStatefulRuleGroupReferenceOverride,
        Map<String, dynamic>>(overrides, (value) => value.toMap());
    map['priority'] = priority;
    map['resourceArn'] = resourceArn;
    return map;
  }

  factory GetFirewallPolicyFirewallPolicyStatefulRuleGroupReference.fromMap(
      Map<String, dynamic> map) {
    return GetFirewallPolicyFirewallPolicyStatefulRuleGroupReference(
      deepThreatInspection: map['deepThreatInspection'] as String,
      overrides: pulumi.Input.decodeList<
              GetFirewallPolicyFirewallPolicyStatefulRuleGroupReferenceOverride>(
          map['overrides'],
          (value) =>
              GetFirewallPolicyFirewallPolicyStatefulRuleGroupReferenceOverride
                  .fromMap((value as Map).cast<String, dynamic>())),
      priority: map['priority'] as int,
      resourceArn: map['resourceArn'] as String,
    );
  }
}
