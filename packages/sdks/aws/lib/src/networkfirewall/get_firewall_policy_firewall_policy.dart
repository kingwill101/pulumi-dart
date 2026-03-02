// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_firewall_policy_firewall_policy_policy_variable.dart';
import 'get_firewall_policy_firewall_policy_stateful_engine_option.dart';
import 'get_firewall_policy_firewall_policy_stateful_rule_group_reference.dart';
import 'get_firewall_policy_firewall_policy_stateless_custom_action.dart';
import 'get_firewall_policy_firewall_policy_stateless_rule_group_reference.dart';

class GetFirewallPolicyFirewallPolicy {
  final pulumi.Input<List<GetFirewallPolicyFirewallPolicyPolicyVariable>> policyVariables;
  final pulumi.Input<List<String>> statefulDefaultActions;
  final pulumi.Input<List<GetFirewallPolicyFirewallPolicyStatefulEngineOption>> statefulEngineOptions;
  final pulumi.Input<List<GetFirewallPolicyFirewallPolicyStatefulRuleGroupReference>> statefulRuleGroupReferences;
  final pulumi.Input<List<GetFirewallPolicyFirewallPolicyStatelessCustomAction>> statelessCustomActions;
  final pulumi.Input<List<String>> statelessDefaultActions;
  final pulumi.Input<List<String>> statelessFragmentDefaultActions;
  final pulumi.Input<List<GetFirewallPolicyFirewallPolicyStatelessRuleGroupReference>> statelessRuleGroupReferences;
  final pulumi.Input<String> tlsInspectionConfigurationArn;

  /// Creates a new [GetFirewallPolicyFirewallPolicy].
  /// [policyVariables] Required.
  /// [statefulDefaultActions] Required.
  /// [statefulEngineOptions] Required.
  /// [statefulRuleGroupReferences] Required.
  /// [statelessCustomActions] Required.
  /// [statelessDefaultActions] Required.
  /// [statelessFragmentDefaultActions] Required.
  /// [statelessRuleGroupReferences] Required.
  /// [tlsInspectionConfigurationArn] Required.
  GetFirewallPolicyFirewallPolicy({
    required this.policyVariables,
    required this.statefulDefaultActions,
    required this.statefulEngineOptions,
    required this.statefulRuleGroupReferences,
    required this.statelessCustomActions,
    required this.statelessDefaultActions,
    required this.statelessFragmentDefaultActions,
    required this.statelessRuleGroupReferences,
    required this.tlsInspectionConfigurationArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyVariables': pulumi.Input.mapInputValue<List<GetFirewallPolicyFirewallPolicyPolicyVariable>, List<Map<String, dynamic>>>(policyVariables, (value) => pulumi.Input.encodeList<GetFirewallPolicyFirewallPolicyPolicyVariable, Map<String, dynamic>>(value, (value) => value.toMap())),
      'statefulDefaultActions': statefulDefaultActions,
      'statefulEngineOptions': pulumi.Input.mapInputValue<List<GetFirewallPolicyFirewallPolicyStatefulEngineOption>, List<Map<String, dynamic>>>(statefulEngineOptions, (value) => pulumi.Input.encodeList<GetFirewallPolicyFirewallPolicyStatefulEngineOption, Map<String, dynamic>>(value, (value) => value.toMap())),
      'statefulRuleGroupReferences': pulumi.Input.mapInputValue<List<GetFirewallPolicyFirewallPolicyStatefulRuleGroupReference>, List<Map<String, dynamic>>>(statefulRuleGroupReferences, (value) => pulumi.Input.encodeList<GetFirewallPolicyFirewallPolicyStatefulRuleGroupReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'statelessCustomActions': pulumi.Input.mapInputValue<List<GetFirewallPolicyFirewallPolicyStatelessCustomAction>, List<Map<String, dynamic>>>(statelessCustomActions, (value) => pulumi.Input.encodeList<GetFirewallPolicyFirewallPolicyStatelessCustomAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'statelessDefaultActions': statelessDefaultActions,
      'statelessFragmentDefaultActions': statelessFragmentDefaultActions,
      'statelessRuleGroupReferences': pulumi.Input.mapInputValue<List<GetFirewallPolicyFirewallPolicyStatelessRuleGroupReference>, List<Map<String, dynamic>>>(statelessRuleGroupReferences, (value) => pulumi.Input.encodeList<GetFirewallPolicyFirewallPolicyStatelessRuleGroupReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tlsInspectionConfigurationArn': tlsInspectionConfigurationArn,
    };
  }

  factory GetFirewallPolicyFirewallPolicy.fromMap(Map<String, dynamic> map) {
    return GetFirewallPolicyFirewallPolicy(
      policyVariables: (pulumi.Input.decodeList<GetFirewallPolicyFirewallPolicyPolicyVariable>(map['policyVariables']!, (value) => GetFirewallPolicyFirewallPolicyPolicyVariable.fromMap((value as Map).cast<String, dynamic>()))).input(),
      statefulDefaultActions: ((map['statefulDefaultActions'] as List).cast<String>()).input(),
      statefulEngineOptions: (pulumi.Input.decodeList<GetFirewallPolicyFirewallPolicyStatefulEngineOption>(map['statefulEngineOptions']!, (value) => GetFirewallPolicyFirewallPolicyStatefulEngineOption.fromMap((value as Map).cast<String, dynamic>()))).input(),
      statefulRuleGroupReferences: (pulumi.Input.decodeList<GetFirewallPolicyFirewallPolicyStatefulRuleGroupReference>(map['statefulRuleGroupReferences']!, (value) => GetFirewallPolicyFirewallPolicyStatefulRuleGroupReference.fromMap((value as Map).cast<String, dynamic>()))).input(),
      statelessCustomActions: (pulumi.Input.decodeList<GetFirewallPolicyFirewallPolicyStatelessCustomAction>(map['statelessCustomActions']!, (value) => GetFirewallPolicyFirewallPolicyStatelessCustomAction.fromMap((value as Map).cast<String, dynamic>()))).input(),
      statelessDefaultActions: ((map['statelessDefaultActions'] as List).cast<String>()).input(),
      statelessFragmentDefaultActions: ((map['statelessFragmentDefaultActions'] as List).cast<String>()).input(),
      statelessRuleGroupReferences: (pulumi.Input.decodeList<GetFirewallPolicyFirewallPolicyStatelessRuleGroupReference>(map['statelessRuleGroupReferences']!, (value) => GetFirewallPolicyFirewallPolicyStatelessRuleGroupReference.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tlsInspectionConfigurationArn: (map['tlsInspectionConfigurationArn'] as String).input(),
    );
  }
}

