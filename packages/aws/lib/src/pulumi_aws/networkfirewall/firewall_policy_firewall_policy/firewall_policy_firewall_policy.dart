// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../firewall_policy_firewall_policy_policy_variables/firewall_policy_firewall_policy_policy_variables.dart';
import '../firewall_policy_firewall_policy_stateful_engine_options/firewall_policy_firewall_policy_stateful_engine_options.dart';
import '../firewall_policy_firewall_policy_stateful_rule_group_reference/firewall_policy_firewall_policy_stateful_rule_group_reference.dart';
import '../firewall_policy_firewall_policy_stateless_custom_action/firewall_policy_firewall_policy_stateless_custom_action.dart';
import '../firewall_policy_firewall_policy_stateless_rule_group_reference/firewall_policy_firewall_policy_stateless_rule_group_reference.dart';

class FirewallPolicyFirewallPolicy {
  /// . Contains variables that you can use to override default Suricata settings in your firewall policy. See Rule Variables for details.
  final FirewallPolicyFirewallPolicyPolicyVariables? policyVariables;

  /// Set of actions to take on a packet if it does not match any stateful rules in the policy. This can only be specified if the policy has a `stateful_engine_options` block with a `rule_order` value of `STRICT_ORDER`. Value values: `aws:drop_strict`, `aws:drop_established`, `aws:drop_established_app_layer`, `aws:alert_strict`, `aws:alert_established, `aws:alert_established_app_layer`. For more information, see [Strict evaluation order](https://docs.aws.amazon.com/network-firewall/latest/developerguide/suricata-rule-evaluation-order.html#suricata-strict-rule-evaluation-order.html) in the AWS Network Firewall Developer Guide.
  final List<String>? statefulDefaultActions;

  /// A configuration block that defines options on how the policy handles stateful rules. See Stateful Engine Options below for details.
  final FirewallPolicyFirewallPolicyStatefulEngineOptions?
      statefulEngineOptions;

  /// Set of configuration blocks containing references to the stateful rule groups that are used in the policy. See Stateful Rule Group Reference below for details.
  final List<FirewallPolicyFirewallPolicyStatefulRuleGroupReference>?
      statefulRuleGroupReferences;

  /// Set of configuration blocks describing the custom action definitions that are available for use in the firewall policy's `stateless_default_actions`. See Stateless Custom Action below for details.
  final List<FirewallPolicyFirewallPolicyStatelessCustomAction>?
      statelessCustomActions;

  /// Set of actions to take on a packet if it does not match any of the stateless rules in the policy. You must specify one of the standard actions including: `aws:drop`, `aws:pass`, or `aws:forward_to_sfe`.
  /// In addition, you can specify custom actions that are compatible with your standard action choice. If you want non-matching packets to be forwarded for stateful inspection, specify `aws:forward_to_sfe`.
  final List<String> statelessDefaultActions;

  /// Set of actions to take on a fragmented packet if it does not match any of the stateless rules in the policy. You must specify one of the standard actions including: `aws:drop`, `aws:pass`, or `aws:forward_to_sfe`.
  /// In addition, you can specify custom actions that are compatible with your standard action choice. If you want non-matching packets to be forwarded for stateful inspection, specify `aws:forward_to_sfe`.
  final List<String> statelessFragmentDefaultActions;

  /// Set of configuration blocks containing references to the stateless rule groups that are used in the policy. See Stateless Rule Group Reference below for details.
  final List<FirewallPolicyFirewallPolicyStatelessRuleGroupReference>?
      statelessRuleGroupReferences;

  /// The (ARN) of the TLS Inspection policy to attach to the FW Policy.  This must be added at creation of the resource per AWS documentation. "You can only add a TLS inspection configuration to a new policy, not to an existing policy."  This cannot be removed from a FW Policy.
  final String? tlsInspectionConfigurationArn;

  FirewallPolicyFirewallPolicy({
    this.policyVariables,
    this.statefulDefaultActions,
    this.statefulEngineOptions,
    this.statefulRuleGroupReferences,
    this.statelessCustomActions,
    required this.statelessDefaultActions,
    required this.statelessFragmentDefaultActions,
    this.statelessRuleGroupReferences,
    this.tlsInspectionConfigurationArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final policyVariablesValue = policyVariables;
    if (policyVariablesValue != null) {
      map['policyVariables'] = policyVariablesValue.toMap();
    }
    final statefulDefaultActionsValue = statefulDefaultActions;
    if (statefulDefaultActionsValue != null) {
      map['statefulDefaultActions'] = statefulDefaultActionsValue;
    }
    final statefulEngineOptionsValue = statefulEngineOptions;
    if (statefulEngineOptionsValue != null) {
      map['statefulEngineOptions'] = statefulEngineOptionsValue.toMap();
    }
    final statefulRuleGroupReferencesValue = statefulRuleGroupReferences;
    if (statefulRuleGroupReferencesValue != null) {
      map['statefulRuleGroupReferences'] = pulumi.Input.encodeList<
              FirewallPolicyFirewallPolicyStatefulRuleGroupReference,
              Map<String, dynamic>>(
          statefulRuleGroupReferencesValue, (value) => value.toMap());
    }
    final statelessCustomActionsValue = statelessCustomActions;
    if (statelessCustomActionsValue != null) {
      map['statelessCustomActions'] = pulumi.Input.encodeList<
              FirewallPolicyFirewallPolicyStatelessCustomAction,
              Map<String, dynamic>>(
          statelessCustomActionsValue, (value) => value.toMap());
    }
    map['statelessDefaultActions'] = statelessDefaultActions;
    map['statelessFragmentDefaultActions'] = statelessFragmentDefaultActions;
    final statelessRuleGroupReferencesValue = statelessRuleGroupReferences;
    if (statelessRuleGroupReferencesValue != null) {
      map['statelessRuleGroupReferences'] = pulumi.Input.encodeList<
              FirewallPolicyFirewallPolicyStatelessRuleGroupReference,
              Map<String, dynamic>>(
          statelessRuleGroupReferencesValue, (value) => value.toMap());
    }
    final tlsInspectionConfigurationArnValue = tlsInspectionConfigurationArn;
    if (tlsInspectionConfigurationArnValue != null) {
      map['tlsInspectionConfigurationArn'] = tlsInspectionConfigurationArnValue;
    }
    return map;
  }

  factory FirewallPolicyFirewallPolicy.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyFirewallPolicy(
      policyVariables: map['policyVariables'] == null
          ? null
          : FirewallPolicyFirewallPolicyPolicyVariables.fromMap(
              (map['policyVariables'] as Map).cast<String, dynamic>()),
      statefulDefaultActions: map['statefulDefaultActions'] == null
          ? null
          : (map['statefulDefaultActions'] as List).cast<String>(),
      statefulEngineOptions: map['statefulEngineOptions'] == null
          ? null
          : FirewallPolicyFirewallPolicyStatefulEngineOptions.fromMap(
              (map['statefulEngineOptions'] as Map).cast<String, dynamic>()),
      statefulRuleGroupReferences: map['statefulRuleGroupReferences'] == null
          ? null
          : pulumi.Input.decodeList<
                  FirewallPolicyFirewallPolicyStatefulRuleGroupReference>(
              map['statefulRuleGroupReferences'],
              (value) => FirewallPolicyFirewallPolicyStatefulRuleGroupReference
                  .fromMap((value as Map).cast<String, dynamic>())),
      statelessCustomActions: map['statelessCustomActions'] == null
          ? null
          : pulumi.Input.decodeList<
                  FirewallPolicyFirewallPolicyStatelessCustomAction>(
              map['statelessCustomActions'],
              (value) =>
                  FirewallPolicyFirewallPolicyStatelessCustomAction.fromMap(
                      (value as Map).cast<String, dynamic>())),
      statelessDefaultActions:
          (map['statelessDefaultActions'] as List).cast<String>(),
      statelessFragmentDefaultActions:
          (map['statelessFragmentDefaultActions'] as List).cast<String>(),
      statelessRuleGroupReferences: map['statelessRuleGroupReferences'] == null
          ? null
          : pulumi.Input.decodeList<
                  FirewallPolicyFirewallPolicyStatelessRuleGroupReference>(
              map['statelessRuleGroupReferences'],
              (value) => FirewallPolicyFirewallPolicyStatelessRuleGroupReference
                  .fromMap((value as Map).cast<String, dynamic>())),
      tlsInspectionConfigurationArn:
          map['tlsInspectionConfigurationArn'] == null
              ? null
              : map['tlsInspectionConfigurationArn'] as String,
    );
  }
}
