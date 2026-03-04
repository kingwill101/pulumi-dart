// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'firewall_policy_firewall_policy_policy_variables.dart';
import 'firewall_policy_firewall_policy_stateful_engine_options.dart';
import 'firewall_policy_firewall_policy_stateful_rule_group_reference.dart';
import 'firewall_policy_firewall_policy_stateless_custom_action.dart';
import 'firewall_policy_firewall_policy_stateless_rule_group_reference.dart';

class FirewallPolicyFirewallPolicy {
  /// . Contains variables that you can use to override default Suricata settings in your firewall policy. See Rule Variables for details.
  final pulumi.Input<FirewallPolicyFirewallPolicyPolicyVariables>?
  policyVariables;

  /// Set of actions to take on a packet if it does not match any stateful rules in the policy. This can only be specified if the policy has a `stateful_engine_options` block with a `rule_order` value of `STRICT_ORDER`. Value values: `aws:drop_strict`, `aws:drop_established`, `aws:drop_established_app_layer`, `aws:alert_strict`, `aws:alert_established, `aws:alert_established_app_layer`. For more information, see [Strict evaluation order](https://docs.aws.amazon.com/network-firewall/latest/developerguide/suricata-rule-evaluation-order.html#suricata-strict-rule-evaluation-order.html) in the AWS Network Firewall Developer Guide.
  final pulumi.Input<List<String>>? statefulDefaultActions;

  /// A configuration block that defines options on how the policy handles stateful rules. See Stateful Engine Options below for details.
  final pulumi.Input<FirewallPolicyFirewallPolicyStatefulEngineOptions>?
  statefulEngineOptions;

  /// Set of configuration blocks containing references to the stateful rule groups that are used in the policy. See Stateful Rule Group Reference below for details.
  final pulumi.Input<
    List<FirewallPolicyFirewallPolicyStatefulRuleGroupReference>
  >?
  statefulRuleGroupReferences;

  /// Set of configuration blocks describing the custom action definitions that are available for use in the firewall policy's `stateless_default_actions`. See Stateless Custom Action below for details.
  final pulumi.Input<List<FirewallPolicyFirewallPolicyStatelessCustomAction>>?
  statelessCustomActions;

  /// Set of actions to take on a packet if it does not match any of the stateless rules in the policy. You must specify one of the standard actions including: `aws:drop`, `aws:pass`, or `aws:forward_to_sfe`.
  /// In addition, you can specify custom actions that are compatible with your standard action choice. If you want non-matching packets to be forwarded for stateful inspection, specify `aws:forward_to_sfe`.
  final pulumi.Input<List<String>> statelessDefaultActions;

  /// Set of actions to take on a fragmented packet if it does not match any of the stateless rules in the policy. You must specify one of the standard actions including: `aws:drop`, `aws:pass`, or `aws:forward_to_sfe`.
  /// In addition, you can specify custom actions that are compatible with your standard action choice. If you want non-matching packets to be forwarded for stateful inspection, specify `aws:forward_to_sfe`.
  final pulumi.Input<List<String>> statelessFragmentDefaultActions;

  /// Set of configuration blocks containing references to the stateless rule groups that are used in the policy. See Stateless Rule Group Reference below for details.
  final pulumi.Input<
    List<FirewallPolicyFirewallPolicyStatelessRuleGroupReference>
  >?
  statelessRuleGroupReferences;

  /// The (ARN) of the TLS Inspection policy to attach to the FW Policy.  This must be added at creation of the resource per AWS documentation. "You can only add a TLS inspection configuration to a new policy, not to an existing policy."  This cannot be removed from a FW Policy.
  final pulumi.Input<String>? tlsInspectionConfigurationArn;

  /// Creates a new [FirewallPolicyFirewallPolicy].
  /// [policyVariables] . Contains variables that you can use to override default Suricata settings in your firewall policy. See Rule Variables for details.
  /// [statefulDefaultActions] Set of actions to take on a packet if it does not match any stateful rules in the policy. This can only be specified if the policy has a `stateful_engine_options` block with a `rule_order` value of `STRICT_ORDER`. Value values: `aws:drop_strict`, `aws:drop_established`, `aws:drop_established_app_layer`, `aws:alert_strict`, `aws:alert_established, `aws:alert_established_app_layer`. For more information, see [Strict evaluation order](https://docs.aws.amazon.com/network-firewall/latest/developerguide/suricata-rule-evaluation-order.html#suricata-strict-rule-evaluation-order.html) in the AWS Network Firewall Developer Guide.
  /// [statefulEngineOptions] A configuration block that defines options on how the policy handles stateful rules. See Stateful Engine Options below for details.
  /// [statefulRuleGroupReferences] Set of configuration blocks containing references to the stateful rule groups that are used in the policy. See Stateful Rule Group Reference below for details.
  /// [statelessCustomActions] Set of configuration blocks describing the custom action definitions that are available for use in the firewall policy's `stateless_default_actions`. See Stateless Custom Action below for details.
  /// [statelessDefaultActions] Set of actions to take on a packet if it does not match any of the stateless rules in the policy. You must specify one of the standard actions including: `aws:drop`, `aws:pass`, or `aws:forward_to_sfe`.
  /// [statelessFragmentDefaultActions] Set of actions to take on a fragmented packet if it does not match any of the stateless rules in the policy. You must specify one of the standard actions including: `aws:drop`, `aws:pass`, or `aws:forward_to_sfe`.
  /// [statelessRuleGroupReferences] Set of configuration blocks containing references to the stateless rule groups that are used in the policy. See Stateless Rule Group Reference below for details.
  /// [tlsInspectionConfigurationArn] The (ARN) of the TLS Inspection policy to attach to the FW Policy.  This must be added at creation of the resource per AWS documentation. "You can only add a TLS inspection configuration to a new policy, not to an existing policy."  This cannot be removed from a FW Policy.
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
    return <String, dynamic>{
      'policyVariables':
          ?pulumi.Input.mapOptionalInputValue<
            FirewallPolicyFirewallPolicyPolicyVariables,
            Map<String, dynamic>
          >(policyVariables, (value) => value.toMap()),
      'statefulDefaultActions': ?statefulDefaultActions,
      'statefulEngineOptions':
          ?pulumi.Input.mapOptionalInputValue<
            FirewallPolicyFirewallPolicyStatefulEngineOptions,
            Map<String, dynamic>
          >(statefulEngineOptions, (value) => value.toMap()),
      'statefulRuleGroupReferences':
          ?pulumi.Input.mapOptionalInputValue<
            List<FirewallPolicyFirewallPolicyStatefulRuleGroupReference>,
            List<Map<String, dynamic>>
          >(
            statefulRuleGroupReferences,
            (value) =>
                pulumi.Input.encodeList<
                  FirewallPolicyFirewallPolicyStatefulRuleGroupReference,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'statelessCustomActions':
          ?pulumi.Input.mapOptionalInputValue<
            List<FirewallPolicyFirewallPolicyStatelessCustomAction>,
            List<Map<String, dynamic>>
          >(
            statelessCustomActions,
            (value) =>
                pulumi.Input.encodeList<
                  FirewallPolicyFirewallPolicyStatelessCustomAction,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'statelessDefaultActions': statelessDefaultActions,
      'statelessFragmentDefaultActions': statelessFragmentDefaultActions,
      'statelessRuleGroupReferences':
          ?pulumi.Input.mapOptionalInputValue<
            List<FirewallPolicyFirewallPolicyStatelessRuleGroupReference>,
            List<Map<String, dynamic>>
          >(
            statelessRuleGroupReferences,
            (value) =>
                pulumi.Input.encodeList<
                  FirewallPolicyFirewallPolicyStatelessRuleGroupReference,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'tlsInspectionConfigurationArn': ?tlsInspectionConfigurationArn,
    };
  }

  factory FirewallPolicyFirewallPolicy.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyFirewallPolicy(
      policyVariables: (() {
        final guardedValue = map['policyVariables'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FirewallPolicyFirewallPolicyPolicyVariables.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      statefulDefaultActions: (() {
        final guardedValue = map['statefulDefaultActions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      statefulEngineOptions: (() {
        final guardedValue = map['statefulEngineOptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          FirewallPolicyFirewallPolicyStatefulEngineOptions.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      statefulRuleGroupReferences: (() {
        final guardedValue = map['statefulRuleGroupReferences'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            FirewallPolicyFirewallPolicyStatefulRuleGroupReference
          >(
            guardedValue,
            (value) =>
                FirewallPolicyFirewallPolicyStatefulRuleGroupReference.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      statelessCustomActions: (() {
        final guardedValue = map['statelessCustomActions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            FirewallPolicyFirewallPolicyStatelessCustomAction
          >(
            guardedValue,
            (value) =>
                FirewallPolicyFirewallPolicyStatelessCustomAction.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      statelessDefaultActions: pulumi.Input.fromValue(
        (map['statelessDefaultActions'] as List).cast<String>(),
      ),
      statelessFragmentDefaultActions: pulumi.Input.fromValue(
        (map['statelessFragmentDefaultActions'] as List).cast<String>(),
      ),
      statelessRuleGroupReferences: (() {
        final guardedValue = map['statelessRuleGroupReferences'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            FirewallPolicyFirewallPolicyStatelessRuleGroupReference
          >(
            guardedValue,
            (value) =>
                FirewallPolicyFirewallPolicyStatelessRuleGroupReference.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      tlsInspectionConfigurationArn: (() {
        final guardedValue = map['tlsInspectionConfigurationArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
