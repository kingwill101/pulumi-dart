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
  final RuleVariablesModelResponse? policyVariables;
  /// Property statefulDefaultActions
  final List<String>? statefulDefaultActions;
  /// Property statefulEngineOptions
  final StatefulEngineOptionsResponse? statefulEngineOptions;
  /// Property statefulRuleGroupReferences
  final List<StatefulRuleGroupReferenceResponse>? statefulRuleGroupReferences;
  /// Property statelessCustomActions
  final List<CustomActionResponse>? statelessCustomActions;
  /// Property statelessDefaultActions
  final List<String>? statelessDefaultActions;
  /// Property statelessFragmentDefaultActions
  final List<String>? statelessFragmentDefaultActions;
  /// Property statelessRuleGroupReferences
  final List<StatelessRuleGroupReferenceResponse>? statelessRuleGroupReferences;
  /// A resource ARN.
  final String? tlsInspectionConfigurationArn;

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
      'policyVariables': ?policyVariables == null ? null : policyVariables!.toMap(),
      'statefulDefaultActions': ?statefulDefaultActions,
      'statefulEngineOptions': ?statefulEngineOptions == null ? null : statefulEngineOptions!.toMap(),
      'statefulRuleGroupReferences': ?statefulRuleGroupReferences == null ? null : pulumi.Input.encodeList<StatefulRuleGroupReferenceResponse, Map<String, dynamic>>(statefulRuleGroupReferences!, (value) => value.toMap()),
      'statelessCustomActions': ?statelessCustomActions == null ? null : pulumi.Input.encodeList<CustomActionResponse, Map<String, dynamic>>(statelessCustomActions!, (value) => value.toMap()),
      'statelessDefaultActions': ?statelessDefaultActions,
      'statelessFragmentDefaultActions': ?statelessFragmentDefaultActions,
      'statelessRuleGroupReferences': ?statelessRuleGroupReferences == null ? null : pulumi.Input.encodeList<StatelessRuleGroupReferenceResponse, Map<String, dynamic>>(statelessRuleGroupReferences!, (value) => value.toMap()),
      'tlsInspectionConfigurationArn': ?tlsInspectionConfigurationArn,
    };
  }

  factory FirewallPolicyResponse.fromMap(Map<String, dynamic> map) {
    return FirewallPolicyResponse(
      policyVariables: map['policyVariables'] == null ? null : RuleVariablesModelResponse.fromMap((map['policyVariables'] as Map).cast<String, dynamic>()),
      statefulDefaultActions: map['statefulDefaultActions'] == null ? null : (map['statefulDefaultActions'] as List).cast<String>(),
      statefulEngineOptions: map['statefulEngineOptions'] == null ? null : StatefulEngineOptionsResponse.fromMap((map['statefulEngineOptions'] as Map).cast<String, dynamic>()),
      statefulRuleGroupReferences: map['statefulRuleGroupReferences'] == null ? null : pulumi.Input.decodeList<StatefulRuleGroupReferenceResponse>(map['statefulRuleGroupReferences'], (value) => StatefulRuleGroupReferenceResponse.fromMap((value as Map).cast<String, dynamic>())),
      statelessCustomActions: map['statelessCustomActions'] == null ? null : pulumi.Input.decodeList<CustomActionResponse>(map['statelessCustomActions'], (value) => CustomActionResponse.fromMap((value as Map).cast<String, dynamic>())),
      statelessDefaultActions: map['statelessDefaultActions'] == null ? null : (map['statelessDefaultActions'] as List).cast<String>(),
      statelessFragmentDefaultActions: map['statelessFragmentDefaultActions'] == null ? null : (map['statelessFragmentDefaultActions'] as List).cast<String>(),
      statelessRuleGroupReferences: map['statelessRuleGroupReferences'] == null ? null : pulumi.Input.decodeList<StatelessRuleGroupReferenceResponse>(map['statelessRuleGroupReferences'], (value) => StatelessRuleGroupReferenceResponse.fromMap((value as Map).cast<String, dynamic>())),
      tlsInspectionConfigurationArn: map['tlsInspectionConfigurationArn'] == null ? null : map['tlsInspectionConfigurationArn'] as String,
    );
  }
}

