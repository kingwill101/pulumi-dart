// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'reference_sets.dart';
import 'rule_variables.dart';
import 'rules_source.dart';
import 'stateful_rule_options.dart';

/// Definition of RuleGroup
class RuleGroup {
  /// Property referenceSets
  final pulumi.Input<ReferenceSets>? referenceSets;
  /// Property ruleVariables
  final pulumi.Input<RuleVariables>? ruleVariables;
  /// Property rulesSource
  final pulumi.Input<RulesSource>? rulesSource;
  /// Property statefulRuleOptions
  final pulumi.Input<StatefulRuleOptions>? statefulRuleOptions;

  /// Creates a new [RuleGroup].
  /// [referenceSets] Property referenceSets
  /// [ruleVariables] Property ruleVariables
  /// [rulesSource] Property rulesSource
  /// [statefulRuleOptions] Property statefulRuleOptions
  const RuleGroup({
    this.referenceSets,
    this.ruleVariables,
    this.rulesSource,
    this.statefulRuleOptions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'referenceSets': ?pulumi.Input.mapOptionalInputValue<ReferenceSets, Map<String, dynamic>>(referenceSets, (value) => value.toMap()),
      'ruleVariables': ?pulumi.Input.mapOptionalInputValue<RuleVariables, Map<String, dynamic>>(ruleVariables, (value) => value.toMap()),
      'rulesSource': ?pulumi.Input.mapOptionalInputValue<RulesSource, Map<String, dynamic>>(rulesSource, (value) => value.toMap()),
      'statefulRuleOptions': ?pulumi.Input.mapOptionalInputValue<StatefulRuleOptions, Map<String, dynamic>>(statefulRuleOptions, (value) => value.toMap()),
    };
  }

  factory RuleGroup.fromMap(Map<String, dynamic> map) {
    return RuleGroup(
      referenceSets: (() { final guardedValue = map['referenceSets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ReferenceSets.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      ruleVariables: (() { final guardedValue = map['ruleVariables']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RuleVariables.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      rulesSource: (() { final guardedValue = map['rulesSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RulesSource.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      statefulRuleOptions: (() { final guardedValue = map['statefulRuleOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(StatefulRuleOptions.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

