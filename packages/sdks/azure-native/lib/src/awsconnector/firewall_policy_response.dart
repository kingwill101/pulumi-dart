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
      policyVariables: (() { final guardedValue = map['policyVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleVariablesModelResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      statefulDefaultActions: (() { final guardedValue = map['statefulDefaultActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      statefulEngineOptions: (() { final guardedValue = map['statefulEngineOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StatefulEngineOptionsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      statefulRuleGroupReferences: (() { final guardedValue = map['statefulRuleGroupReferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StatefulRuleGroupReferenceResponse>(guardedValue, (value) => StatefulRuleGroupReferenceResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      statelessCustomActions: (() { final guardedValue = map['statelessCustomActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CustomActionResponse>(guardedValue, (value) => CustomActionResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      statelessDefaultActions: (() { final guardedValue = map['statelessDefaultActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      statelessFragmentDefaultActions: (() { final guardedValue = map['statelessFragmentDefaultActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      statelessRuleGroupReferences: (() { final guardedValue = map['statelessRuleGroupReferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StatelessRuleGroupReferenceResponse>(guardedValue, (value) => StatelessRuleGroupReferenceResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      tlsInspectionConfigurationArn: (() { final guardedValue = map['tlsInspectionConfigurationArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

