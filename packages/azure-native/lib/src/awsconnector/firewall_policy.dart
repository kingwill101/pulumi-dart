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
  final RuleVariablesModel? policyVariables;
  /// Property statefulDefaultActions
  final List<String>? statefulDefaultActions;
  /// Property statefulEngineOptions
  final StatefulEngineOptions? statefulEngineOptions;
  /// Property statefulRuleGroupReferences
  final List<StatefulRuleGroupReference>? statefulRuleGroupReferences;
  /// Property statelessCustomActions
  final List<CustomAction>? statelessCustomActions;
  /// Property statelessDefaultActions
  final List<String>? statelessDefaultActions;
  /// Property statelessFragmentDefaultActions
  final List<String>? statelessFragmentDefaultActions;
  /// Property statelessRuleGroupReferences
  final List<StatelessRuleGroupReference>? statelessRuleGroupReferences;
  /// A resource ARN.
  final String? tlsInspectionConfigurationArn;

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
      'policyVariables': ?policyVariables == null ? null : policyVariables!.toMap(),
      'statefulDefaultActions': ?statefulDefaultActions,
      'statefulEngineOptions': ?statefulEngineOptions == null ? null : statefulEngineOptions!.toMap(),
      'statefulRuleGroupReferences': ?statefulRuleGroupReferences == null ? null : pulumi.Input.encodeList<StatefulRuleGroupReference, Map<String, dynamic>>(statefulRuleGroupReferences!, (value) => value.toMap()),
      'statelessCustomActions': ?statelessCustomActions == null ? null : pulumi.Input.encodeList<CustomAction, Map<String, dynamic>>(statelessCustomActions!, (value) => value.toMap()),
      'statelessDefaultActions': ?statelessDefaultActions,
      'statelessFragmentDefaultActions': ?statelessFragmentDefaultActions,
      'statelessRuleGroupReferences': ?statelessRuleGroupReferences == null ? null : pulumi.Input.encodeList<StatelessRuleGroupReference, Map<String, dynamic>>(statelessRuleGroupReferences!, (value) => value.toMap()),
      'tlsInspectionConfigurationArn': ?tlsInspectionConfigurationArn,
    };
  }

  factory FirewallPolicy.fromMap(Map<String, dynamic> map) {
    return FirewallPolicy(
      policyVariables: map['policyVariables'] == null ? null : RuleVariablesModel.fromMap((map['policyVariables'] as Map).cast<String, dynamic>()),
      statefulDefaultActions: map['statefulDefaultActions'] == null ? null : (map['statefulDefaultActions'] as List).cast<String>(),
      statefulEngineOptions: map['statefulEngineOptions'] == null ? null : StatefulEngineOptions.fromMap((map['statefulEngineOptions'] as Map).cast<String, dynamic>()),
      statefulRuleGroupReferences: map['statefulRuleGroupReferences'] == null ? null : pulumi.Input.decodeList<StatefulRuleGroupReference>(map['statefulRuleGroupReferences'], (value) => StatefulRuleGroupReference.fromMap((value as Map).cast<String, dynamic>())),
      statelessCustomActions: map['statelessCustomActions'] == null ? null : pulumi.Input.decodeList<CustomAction>(map['statelessCustomActions'], (value) => CustomAction.fromMap((value as Map).cast<String, dynamic>())),
      statelessDefaultActions: map['statelessDefaultActions'] == null ? null : (map['statelessDefaultActions'] as List).cast<String>(),
      statelessFragmentDefaultActions: map['statelessFragmentDefaultActions'] == null ? null : (map['statelessFragmentDefaultActions'] as List).cast<String>(),
      statelessRuleGroupReferences: map['statelessRuleGroupReferences'] == null ? null : pulumi.Input.decodeList<StatelessRuleGroupReference>(map['statelessRuleGroupReferences'], (value) => StatelessRuleGroupReference.fromMap((value as Map).cast<String, dynamic>())),
      tlsInspectionConfigurationArn: map['tlsInspectionConfigurationArn'] == null ? null : map['tlsInspectionConfigurationArn'] as String,
    );
  }
}

