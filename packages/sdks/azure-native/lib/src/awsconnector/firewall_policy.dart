// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_action.dart';
import 'rule_variables_model.dart';
import 'stateful_engine_options.dart';
import 'stateful_rule_group_reference.dart';
import 'stateless_rule_group_reference.dart';

/// Definition of FirewallPolicy
class FirewallPolicy {
  /// Property policyVariables
  final pulumi.Input<RuleVariablesModel>? policyVariables;
  /// Property statefulDefaultActions
  final pulumi.Input<List<String>>? statefulDefaultActions;
  /// Property statefulEngineOptions
  final pulumi.Input<StatefulEngineOptions>? statefulEngineOptions;
  /// Property statefulRuleGroupReferences
  final pulumi.Input<List<StatefulRuleGroupReference>>? statefulRuleGroupReferences;
  /// Property statelessCustomActions
  final pulumi.Input<List<CustomAction>>? statelessCustomActions;
  /// Property statelessDefaultActions
  final pulumi.Input<List<String>>? statelessDefaultActions;
  /// Property statelessFragmentDefaultActions
  final pulumi.Input<List<String>>? statelessFragmentDefaultActions;
  /// Property statelessRuleGroupReferences
  final pulumi.Input<List<StatelessRuleGroupReference>>? statelessRuleGroupReferences;
  /// A resource ARN.
  final pulumi.Input<String>? tlsInspectionConfigurationArn;

  /// Creates a new [FirewallPolicy].
  /// [policyVariables] Property policyVariables
  /// [statefulDefaultActions] Property statefulDefaultActions
  /// [statefulEngineOptions] Property statefulEngineOptions
  /// [statefulRuleGroupReferences] Property statefulRuleGroupReferences
  /// [statelessCustomActions] Property statelessCustomActions
  /// [statelessDefaultActions] Property statelessDefaultActions
  /// [statelessFragmentDefaultActions] Property statelessFragmentDefaultActions
  /// [statelessRuleGroupReferences] Property statelessRuleGroupReferences
  /// [tlsInspectionConfigurationArn] A resource ARN.
  FirewallPolicy({
    this.policyVariables,
    this.statefulDefaultActions,
    this.statefulEngineOptions,
    this.statefulRuleGroupReferences,
    this.statelessCustomActions,
    this.statelessDefaultActions,
    this.statelessFragmentDefaultActions,
    this.statelessRuleGroupReferences,
    this.tlsInspectionConfigurationArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'policyVariables': ?pulumi.Input.mapOptionalInputValue<RuleVariablesModel, Map<String, dynamic>>(policyVariables, (value) => value.toMap()),
      'statefulDefaultActions': ?statefulDefaultActions,
      'statefulEngineOptions': ?pulumi.Input.mapOptionalInputValue<StatefulEngineOptions, Map<String, dynamic>>(statefulEngineOptions, (value) => value.toMap()),
      'statefulRuleGroupReferences': ?pulumi.Input.mapOptionalInputValue<List<StatefulRuleGroupReference>, List<Map<String, dynamic>>>(statefulRuleGroupReferences, (value) => pulumi.Input.encodeList<StatefulRuleGroupReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'statelessCustomActions': ?pulumi.Input.mapOptionalInputValue<List<CustomAction>, List<Map<String, dynamic>>>(statelessCustomActions, (value) => pulumi.Input.encodeList<CustomAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'statelessDefaultActions': ?statelessDefaultActions,
      'statelessFragmentDefaultActions': ?statelessFragmentDefaultActions,
      'statelessRuleGroupReferences': ?pulumi.Input.mapOptionalInputValue<List<StatelessRuleGroupReference>, List<Map<String, dynamic>>>(statelessRuleGroupReferences, (value) => pulumi.Input.encodeList<StatelessRuleGroupReference, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tlsInspectionConfigurationArn': ?tlsInspectionConfigurationArn,
    };
  }

  factory FirewallPolicy.fromMap(Map<String, dynamic> map) {
    return FirewallPolicy(
      policyVariables: map['policyVariables'] == null ? null : (RuleVariablesModel.fromMap((map['policyVariables'] as Map).cast<String, dynamic>())).input(),
      statefulDefaultActions: map['statefulDefaultActions'] == null ? null : ((map['statefulDefaultActions'] as List).cast<String>()).input(),
      statefulEngineOptions: map['statefulEngineOptions'] == null ? null : (StatefulEngineOptions.fromMap((map['statefulEngineOptions'] as Map).cast<String, dynamic>())).input(),
      statefulRuleGroupReferences: map['statefulRuleGroupReferences'] == null ? null : (pulumi.Input.decodeList<StatefulRuleGroupReference>(map['statefulRuleGroupReferences'], (value) => StatefulRuleGroupReference.fromMap((value as Map).cast<String, dynamic>()))).input(),
      statelessCustomActions: map['statelessCustomActions'] == null ? null : (pulumi.Input.decodeList<CustomAction>(map['statelessCustomActions'], (value) => CustomAction.fromMap((value as Map).cast<String, dynamic>()))).input(),
      statelessDefaultActions: map['statelessDefaultActions'] == null ? null : ((map['statelessDefaultActions'] as List).cast<String>()).input(),
      statelessFragmentDefaultActions: map['statelessFragmentDefaultActions'] == null ? null : ((map['statelessFragmentDefaultActions'] as List).cast<String>()).input(),
      statelessRuleGroupReferences: map['statelessRuleGroupReferences'] == null ? null : (pulumi.Input.decodeList<StatelessRuleGroupReference>(map['statelessRuleGroupReferences'], (value) => StatelessRuleGroupReference.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tlsInspectionConfigurationArn: map['tlsInspectionConfigurationArn'] == null ? null : (map['tlsInspectionConfigurationArn'] as String).input(),
    );
  }
}

