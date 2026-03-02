// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_action_response.dart';
import 'rule_variables_model_response.dart';
import 'stateful_engine_options_response.dart';
import 'stateful_rule_group_reference_response.dart';
import 'stateless_rule_group_reference_response.dart';

/// Definition of FirewallPolicy
class FirewallPolicyResponse {
  /// Property policyVariables
  final pulumi.Input<RuleVariablesModelResponse>? policyVariables;
  /// Property statefulDefaultActions
  final pulumi.Input<List<String>>? statefulDefaultActions;
  /// Property statefulEngineOptions
  final pulumi.Input<StatefulEngineOptionsResponse>? statefulEngineOptions;
  /// Property statefulRuleGroupReferences
  final pulumi.Input<List<StatefulRuleGroupReferenceResponse>>? statefulRuleGroupReferences;
  /// Property statelessCustomActions
  final pulumi.Input<List<CustomActionResponse>>? statelessCustomActions;
  /// Property statelessDefaultActions
  final pulumi.Input<List<String>>? statelessDefaultActions;
  /// Property statelessFragmentDefaultActions
  final pulumi.Input<List<String>>? statelessFragmentDefaultActions;
  /// Property statelessRuleGroupReferences
  final pulumi.Input<List<StatelessRuleGroupReferenceResponse>>? statelessRuleGroupReferences;
  /// A resource ARN.
  final pulumi.Input<String>? tlsInspectionConfigurationArn;

  /// Creates a new [FirewallPolicyResponse].
  /// [policyVariables] Property policyVariables
  /// [statefulDefaultActions] Property statefulDefaultActions
  /// [statefulEngineOptions] Property statefulEngineOptions
  /// [statefulRuleGroupReferences] Property statefulRuleGroupReferences
  /// [statelessCustomActions] Property statelessCustomActions
  /// [statelessDefaultActions] Property statelessDefaultActions
  /// [statelessFragmentDefaultActions] Property statelessFragmentDefaultActions
  /// [statelessRuleGroupReferences] Property statelessRuleGroupReferences
  /// [tlsInspectionConfigurationArn] A resource ARN.
  FirewallPolicyResponse({
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
      'policyVariables': ?pulumi.Input.mapOptionalInputValue<RuleVariablesModelResponse, Map<String, dynamic>>(policyVariables, (value) => value.toMap()),
      'statefulDefaultActions': ?statefulDefaultActions,
      'statefulEngineOptions': ?pulumi.Input.mapOptionalInputValue<StatefulEngineOptionsResponse, Map<String, dynamic>>(statefulEngineOptions, (value) => value.toMap()),
      'statefulRuleGroupReferences': ?pulumi.Input.mapOptionalInputValue<List<StatefulRuleGroupReferenceResponse>, List<Map<String, dynamic>>>(statefulRuleGroupReferences, (value) => pulumi.Input.encodeList<StatefulRuleGroupReferenceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'statelessCustomActions': ?pulumi.Input.mapOptionalInputValue<List<CustomActionResponse>, List<Map<String, dynamic>>>(statelessCustomActions, (value) => pulumi.Input.encodeList<CustomActionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'statelessDefaultActions': ?statelessDefaultActions,
      'statelessFragmentDefaultActions': ?statelessFragmentDefaultActions,
      'statelessRuleGroupReferences': ?pulumi.Input.mapOptionalInputValue<List<StatelessRuleGroupReferenceResponse>, List<Map<String, dynamic>>>(statelessRuleGroupReferences, (value) => pulumi.Input.encodeList<StatelessRuleGroupReferenceResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tlsInspectionConfigurationArn': ?tlsInspectionConfigurationArn,
    };
  }

  factory FirewallPolicyResponse.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyResponse(
      policyVariables: map['policyVariables'] == null ? null : (RuleVariablesModelResponse.fromMap((map['policyVariables'] as Map).cast<String, dynamic>())).input(),
      statefulDefaultActions: map['statefulDefaultActions'] == null ? null : ((map['statefulDefaultActions'] as List).cast<String>()).input(),
      statefulEngineOptions: map['statefulEngineOptions'] == null ? null : (StatefulEngineOptionsResponse.fromMap((map['statefulEngineOptions'] as Map).cast<String, dynamic>())).input(),
      statefulRuleGroupReferences: map['statefulRuleGroupReferences'] == null ? null : (pulumi.Input.decodeList<StatefulRuleGroupReferenceResponse>(map['statefulRuleGroupReferences'], (value) => StatefulRuleGroupReferenceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      statelessCustomActions: map['statelessCustomActions'] == null ? null : (pulumi.Input.decodeList<CustomActionResponse>(map['statelessCustomActions'], (value) => CustomActionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      statelessDefaultActions: map['statelessDefaultActions'] == null ? null : ((map['statelessDefaultActions'] as List).cast<String>()).input(),
      statelessFragmentDefaultActions: map['statelessFragmentDefaultActions'] == null ? null : ((map['statelessFragmentDefaultActions'] as List).cast<String>()).input(),
      statelessRuleGroupReferences: map['statelessRuleGroupReferences'] == null ? null : (pulumi.Input.decodeList<StatelessRuleGroupReferenceResponse>(map['statelessRuleGroupReferences'], (value) => StatelessRuleGroupReferenceResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tlsInspectionConfigurationArn: map['tlsInspectionConfigurationArn'] == null ? null : (map['tlsInspectionConfigurationArn'] as String).input(),
    );
  }
}

