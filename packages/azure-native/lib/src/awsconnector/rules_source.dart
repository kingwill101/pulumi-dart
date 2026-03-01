// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rules_source_list.dart';
import 'stateful_rule.dart';
import 'stateless_rules_and_custom_actions.dart';

/// Definition of RulesSource
class RulesSource {
  /// Property rulesSourceList
  final RulesSourceList? rulesSourceList;
  /// Property rulesString
  final String? rulesString;
  /// Property statefulRules
  final List<StatefulRule>? statefulRules;
  /// Property statelessRulesAndCustomActions
  final StatelessRulesAndCustomActions? statelessRulesAndCustomActions;

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
      'rulesSourceList': ?rulesSourceList == null ? null : rulesSourceList!.toMap(),
      'rulesString': ?rulesString,
      'statefulRules': ?statefulRules == null ? null : pulumi.Input.encodeList<StatefulRule, Map<String, dynamic>>(statefulRules!, (value) => value.toMap()),
      'statelessRulesAndCustomActions': ?statelessRulesAndCustomActions == null ? null : statelessRulesAndCustomActions!.toMap(),
    };
  }

  factory RulesSource.fromMap(Map<String, dynamic> map) {
    return RulesSource(
      rulesSourceList: map['rulesSourceList'] == null ? null : RulesSourceList.fromMap((map['rulesSourceList'] as Map).cast<String, dynamic>()),
      rulesString: map['rulesString'] == null ? null : map['rulesString'] as String,
      statefulRules: map['statefulRules'] == null ? null : pulumi.Input.decodeList<StatefulRule>(map['statefulRules'], (value) => StatefulRule.fromMap((value as Map).cast<String, dynamic>())),
      statelessRulesAndCustomActions: map['statelessRulesAndCustomActions'] == null ? null : StatelessRulesAndCustomActions.fromMap((map['statelessRulesAndCustomActions'] as Map).cast<String, dynamic>()),
    );
  }
}

