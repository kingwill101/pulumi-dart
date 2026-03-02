// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rules_source_list.dart';
import 'stateful_rule.dart';
import 'stateless_rules_and_custom_actions.dart';

/// Definition of RulesSource
class RulesSource {
  /// Property rulesSourceList
  final pulumi.Input<RulesSourceList>? rulesSourceList;
  /// Property rulesString
  final pulumi.Input<String>? rulesString;
  /// Property statefulRules
  final pulumi.Input<List<StatefulRule>>? statefulRules;
  /// Property statelessRulesAndCustomActions
  final pulumi.Input<StatelessRulesAndCustomActions>? statelessRulesAndCustomActions;

  /// Creates a new [RulesSource].
  /// [rulesSourceList] Property rulesSourceList
  /// [rulesString] Property rulesString
  /// [statefulRules] Property statefulRules
  /// [statelessRulesAndCustomActions] Property statelessRulesAndCustomActions
  RulesSource({
    this.rulesSourceList,
    this.rulesString,
    this.statefulRules,
    this.statelessRulesAndCustomActions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rulesSourceList': ?pulumi.Input.mapOptionalInputValue<RulesSourceList, Map<String, dynamic>>(rulesSourceList, (value) => value.toMap()),
      'rulesString': ?rulesString,
      'statefulRules': ?pulumi.Input.mapOptionalInputValue<List<StatefulRule>, List<Map<String, dynamic>>>(statefulRules, (value) => pulumi.Input.encodeList<StatefulRule, Map<String, dynamic>>(value, (value) => value.toMap())),
      'statelessRulesAndCustomActions': ?pulumi.Input.mapOptionalInputValue<StatelessRulesAndCustomActions, Map<String, dynamic>>(statelessRulesAndCustomActions, (value) => value.toMap()),
    };
  }

  factory RulesSource.fromMap(Map<String, dynamic> map) {
    return RulesSource(
      rulesSourceList: map['rulesSourceList'] == null ? null : (RulesSourceList.fromMap((map['rulesSourceList'] as Map).cast<String, dynamic>())).input(),
      rulesString: map['rulesString'] == null ? null : (map['rulesString'] as String).input(),
      statefulRules: map['statefulRules'] == null ? null : (pulumi.Input.decodeList<StatefulRule>(map['statefulRules'], (value) => StatefulRule.fromMap((value as Map).cast<String, dynamic>()))).input(),
      statelessRulesAndCustomActions: map['statelessRulesAndCustomActions'] == null ? null : (StatelessRulesAndCustomActions.fromMap((map['statelessRulesAndCustomActions'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

