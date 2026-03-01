// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_firewall_policy_firewall_policy_policy_variable.dart';
import 'get_firewall_policy_firewall_policy_stateful_engine_option.dart';
import 'get_firewall_policy_firewall_policy_stateful_rule_group_reference.dart';
import 'get_firewall_policy_firewall_policy_stateless_custom_action.dart';
import 'get_firewall_policy_firewall_policy_stateless_rule_group_reference.dart';

class GetFirewallPolicyFirewallPolicy {
  final List<GetFirewallPolicyFirewallPolicyPolicyVariable> policyVariables;
  final List<String> statefulDefaultActions;
  final List<GetFirewallPolicyFirewallPolicyStatefulEngineOption>
  statefulEngineOptions;
  final List<GetFirewallPolicyFirewallPolicyStatefulRuleGroupReference>
  statefulRuleGroupReferences;
  final List<GetFirewallPolicyFirewallPolicyStatelessCustomAction>
  statelessCustomActions;
  final List<String> statelessDefaultActions;
  final List<String> statelessFragmentDefaultActions;
  final List<GetFirewallPolicyFirewallPolicyStatelessRuleGroupReference>
  statelessRuleGroupReferences;
  final String tlsInspectionConfigurationArn;

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
      'policyVariables':
          pulumi.Input.encodeList<
            GetFirewallPolicyFirewallPolicyPolicyVariable,
            Map<String, dynamic>
          >(policyVariables, (value) => value.toMap()),
      'statefulDefaultActions': statefulDefaultActions,
      'statefulEngineOptions':
          pulumi.Input.encodeList<
            GetFirewallPolicyFirewallPolicyStatefulEngineOption,
            Map<String, dynamic>
          >(statefulEngineOptions, (value) => value.toMap()),
      'statefulRuleGroupReferences':
          pulumi.Input.encodeList<
            GetFirewallPolicyFirewallPolicyStatefulRuleGroupReference,
            Map<String, dynamic>
          >(statefulRuleGroupReferences, (value) => value.toMap()),
      'statelessCustomActions':
          pulumi.Input.encodeList<
            GetFirewallPolicyFirewallPolicyStatelessCustomAction,
            Map<String, dynamic>
          >(statelessCustomActions, (value) => value.toMap()),
      'statelessDefaultActions': statelessDefaultActions,
      'statelessFragmentDefaultActions': statelessFragmentDefaultActions,
      'statelessRuleGroupReferences':
          pulumi.Input.encodeList<
            GetFirewallPolicyFirewallPolicyStatelessRuleGroupReference,
            Map<String, dynamic>
          >(statelessRuleGroupReferences, (value) => value.toMap()),
      'tlsInspectionConfigurationArn': tlsInspectionConfigurationArn,
    };
  }

  factory GetFirewallPolicyFirewallPolicy.fromMap(Map<String, dynamic> map) {
    return GetFirewallPolicyFirewallPolicy(
      policyVariables:
          pulumi
              .Input.decodeList<GetFirewallPolicyFirewallPolicyPolicyVariable>(
            map['policyVariables'],
            (value) => GetFirewallPolicyFirewallPolicyPolicyVariable.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      statefulDefaultActions: (map['statefulDefaultActions'] as List)
          .cast<String>(),
      statefulEngineOptions:
          pulumi.Input.decodeList<
            GetFirewallPolicyFirewallPolicyStatefulEngineOption
          >(
            map['statefulEngineOptions'],
            (value) =>
                GetFirewallPolicyFirewallPolicyStatefulEngineOption.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      statefulRuleGroupReferences:
          pulumi.Input.decodeList<
            GetFirewallPolicyFirewallPolicyStatefulRuleGroupReference
          >(
            map['statefulRuleGroupReferences'],
            (value) =>
                GetFirewallPolicyFirewallPolicyStatefulRuleGroupReference.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      statelessCustomActions:
          pulumi.Input.decodeList<
            GetFirewallPolicyFirewallPolicyStatelessCustomAction
          >(
            map['statelessCustomActions'],
            (value) =>
                GetFirewallPolicyFirewallPolicyStatelessCustomAction.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      statelessDefaultActions: (map['statelessDefaultActions'] as List)
          .cast<String>(),
      statelessFragmentDefaultActions:
          (map['statelessFragmentDefaultActions'] as List).cast<String>(),
      statelessRuleGroupReferences:
          pulumi.Input.decodeList<
            GetFirewallPolicyFirewallPolicyStatelessRuleGroupReference
          >(
            map['statelessRuleGroupReferences'],
            (value) =>
                GetFirewallPolicyFirewallPolicyStatelessRuleGroupReference.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      tlsInspectionConfigurationArn:
          map['tlsInspectionConfigurationArn'] as String,
    );
  }
}
