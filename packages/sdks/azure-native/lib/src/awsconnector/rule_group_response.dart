// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reference_sets_response.dart';
import 'rule_variables_response.dart';
import 'rules_source_response.dart';
import 'stateful_rule_options_response.dart';

/// Definition of RuleGroup
class RuleGroupResponse {
  /// Property referenceSets
  final pulumi.Input<ReferenceSetsResponse>? referenceSets;
  /// Property ruleVariables
  final pulumi.Input<RuleVariablesResponse>? ruleVariables;
  /// Property rulesSource
  final pulumi.Input<RulesSourceResponse>? rulesSource;
  /// Property statefulRuleOptions
  final pulumi.Input<StatefulRuleOptionsResponse>? statefulRuleOptions;

  /// Creates a new [RuleGroupResponse].
  /// [referenceSets] Property referenceSets
  /// [ruleVariables] Property ruleVariables
  /// [rulesSource] Property rulesSource
  /// [statefulRuleOptions] Property statefulRuleOptions
  const RuleGroupResponse({
    this.referenceSets,
    this.ruleVariables,
    this.rulesSource,
    this.statefulRuleOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'referenceSets': ?pulumi.Input.mapOptionalInputValue<ReferenceSetsResponse, Map<String, dynamic>>(referenceSets, (value) => value.toMap()),
      'ruleVariables': ?pulumi.Input.mapOptionalInputValue<RuleVariablesResponse, Map<String, dynamic>>(ruleVariables, (value) => value.toMap()),
      'rulesSource': ?pulumi.Input.mapOptionalInputValue<RulesSourceResponse, Map<String, dynamic>>(rulesSource, (value) => value.toMap()),
      'statefulRuleOptions': ?pulumi.Input.mapOptionalInputValue<StatefulRuleOptionsResponse, Map<String, dynamic>>(statefulRuleOptions, (value) => value.toMap()),
    };
  }

  factory RuleGroupResponse.fromMap(Map<String, dynamic> map) {
    return RuleGroupResponse(
      referenceSets: (() { final guardedValue = map['referenceSets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReferenceSetsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ruleVariables: (() { final guardedValue = map['ruleVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleVariablesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rulesSource: (() { final guardedValue = map['rulesSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RulesSourceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      statefulRuleOptions: (() { final guardedValue = map['statefulRuleOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StatefulRuleOptionsResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

