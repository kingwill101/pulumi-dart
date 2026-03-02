// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_firewall_policy_firewall_policy_stateful_rule_group_reference_override.dart';

class GetFirewallPolicyFirewallPolicyStatefulRuleGroupReference {
  final pulumi.Input<String> deepThreatInspection;
  final pulumi.Input<List<GetFirewallPolicyFirewallPolicyStatefulRuleGroupReferenceOverride>> overrides;
  final pulumi.Input<int> priority;
  final pulumi.Input<String> resourceArn;

  /// Creates a new [GetFirewallPolicyFirewallPolicyStatefulRuleGroupReference].
  /// [deepThreatInspection] Required.
  /// [overrides] Required.
  /// [priority] Required.
  /// [resourceArn] Required.
  GetFirewallPolicyFirewallPolicyStatefulRuleGroupReference({
    required this.deepThreatInspection,
    required this.overrides,
    required this.priority,
    required this.resourceArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'deepThreatInspection': deepThreatInspection,
      'overrides': pulumi.Input.mapInputValue<List<GetFirewallPolicyFirewallPolicyStatefulRuleGroupReferenceOverride>, List<Map<String, dynamic>>>(overrides, (value) => pulumi.Input.encodeList<GetFirewallPolicyFirewallPolicyStatefulRuleGroupReferenceOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
      'priority': priority,
      'resourceArn': resourceArn,
    };
  }

  factory GetFirewallPolicyFirewallPolicyStatefulRuleGroupReference.fromMap(Map<String, dynamic> map) {
    return GetFirewallPolicyFirewallPolicyStatefulRuleGroupReference(
      deepThreatInspection: (map['deepThreatInspection'] as String).input(),
      overrides: (pulumi.Input.decodeList<GetFirewallPolicyFirewallPolicyStatefulRuleGroupReferenceOverride>(map['overrides'], (value) => GetFirewallPolicyFirewallPolicyStatefulRuleGroupReferenceOverride.fromMap((value as Map).cast<String, dynamic>()))).input(),
      priority: (map['priority'] as int).input(),
      resourceArn: (map['resourceArn'] as String).input(),
    );
  }
}

