// ignore_for_file: unused_element, unnecessary_cast

import 'firewall_policy_firewall_policy_stateful_rule_group_reference_override.dart';

class FirewallPolicyFirewallPolicyStatefulRuleGroupReference {
  /// Whether to enable deep threat inspection, which allows AWS to analyze service logs of network traffic processed by these rule groups to identify threat indicators across customers. AWS will use these threat indicators to improve the active threat defense managed rule groups and protect the security of AWS customers and services. This only applies to active threat defense maanaged rule groups.
  ///
  /// For details, refer to [AWS active threat defense for AWS Network Firewall](https://docs.aws.amazon.com/network-firewall/latest/developerguide/aws-managed-rule-groups-atd.html) in the AWS Network Firewall Developer Guide.
  final String? deepThreatInspection;

  /// Configuration block for override values
  final FirewallPolicyFirewallPolicyStatefulRuleGroupReferenceOverride?
      override;

  /// An integer setting that indicates the order in which to apply the stateful rule groups in a single policy. This argument must be specified if the policy has a `stateful_engine_options` block with a `rule_order` value of `STRICT_ORDER`. AWS Network Firewall applies each stateful rule group to a packet starting with the group that has the lowest priority setting.
  final int? priority;

  /// The Amazon Resource Name (ARN) of the stateful rule group.
  final String resourceArn;

  /// Creates a new [FirewallPolicyFirewallPolicyStatefulRuleGroupReference].
  /// [deepThreatInspection] Whether to enable deep threat inspection, which allows AWS to analyze service logs of network traffic processed by these rule groups to identify threat indicators across customers. AWS will use these threat indicators to improve the active threat defense managed rule groups and protect the security of AWS customers and services. This only applies to active threat defense maanaged rule groups.
  /// [override] Configuration block for override values
  /// [priority] An integer setting that indicates the order in which to apply the stateful rule groups in a single policy. This argument must be specified if the policy has a `stateful_engine_options` block with a `rule_order` value of `STRICT_ORDER`. AWS Network Firewall applies each stateful rule group to a packet starting with the group that has the lowest priority setting.
  /// [resourceArn] The Amazon Resource Name (ARN) of the stateful rule group.
  FirewallPolicyFirewallPolicyStatefulRuleGroupReference({
    this.deepThreatInspection,
    this.override,
    this.priority,
    required this.resourceArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deepThreatInspectionValue = deepThreatInspection;
    if (deepThreatInspectionValue != null) {
      map['deepThreatInspection'] = deepThreatInspectionValue;
    }
    final overrideValue = override;
    if (overrideValue != null) {
      map['override'] = overrideValue.toMap();
    }
    final priorityValue = priority;
    if (priorityValue != null) {
      map['priority'] = priorityValue;
    }
    map['resourceArn'] = resourceArn;
    return map;
  }

  factory FirewallPolicyFirewallPolicyStatefulRuleGroupReference.fromMap(
      Map<String, dynamic> map) {
    return FirewallPolicyFirewallPolicyStatefulRuleGroupReference(
      deepThreatInspection: map['deepThreatInspection'] == null
          ? null
          : map['deepThreatInspection'] as String,
      override: map['override'] == null
          ? null
          : FirewallPolicyFirewallPolicyStatefulRuleGroupReferenceOverride
              .fromMap((map['override'] as Map).cast<String, dynamic>()),
      priority: map['priority'] == null ? null : map['priority'] as int,
      resourceArn: map['resourceArn'] as String,
    );
  }
}
