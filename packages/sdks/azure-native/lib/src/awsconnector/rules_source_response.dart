// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rules_source_list_response.dart';
import 'stateful_rule_response.dart';
import 'stateless_rules_and_custom_actions_response.dart';

/// Definition of RulesSource
class RulesSourceResponse {
  /// Property rulesSourceList
  final pulumi.Input<RulesSourceListResponse>? rulesSourceList;
  /// Property rulesString
  final pulumi.Input<String>? rulesString;
  /// Property statefulRules
  final pulumi.Input<List<StatefulRuleResponse>>? statefulRules;
  /// Property statelessRulesAndCustomActions
  final pulumi.Input<StatelessRulesAndCustomActionsResponse>? statelessRulesAndCustomActions;

  /// Creates a new [RulesSourceResponse].
  /// [rulesSourceList] Property rulesSourceList
  /// [rulesString] Property rulesString
  /// [statefulRules] Property statefulRules
  /// [statelessRulesAndCustomActions] Property statelessRulesAndCustomActions
  RulesSourceResponse({
    this.rulesSourceList,
    this.rulesString,
    this.statefulRules,
    this.statelessRulesAndCustomActions,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'rulesSourceList': ?pulumi.Input.mapOptionalInputValue<RulesSourceListResponse, Map<String, dynamic>>(rulesSourceList, (value) => value.toMap()),
      'rulesString': ?rulesString,
      'statefulRules': ?pulumi.Input.mapOptionalInputValue<List<StatefulRuleResponse>, List<Map<String, dynamic>>>(statefulRules, (value) => pulumi.Input.encodeList<StatefulRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'statelessRulesAndCustomActions': ?pulumi.Input.mapOptionalInputValue<StatelessRulesAndCustomActionsResponse, Map<String, dynamic>>(statelessRulesAndCustomActions, (value) => value.toMap()),
    };
  }

  factory RulesSourceResponse.fromMap(Map<String, dynamic> map) {
    return RulesSourceResponse(
      rulesSourceList: map['rulesSourceList'] == null ? null : (RulesSourceListResponse.fromMap((map['rulesSourceList'] as Map).cast<String, dynamic>())).input(),
      rulesString: map['rulesString'] == null ? null : (map['rulesString'] as String).input(),
      statefulRules: map['statefulRules'] == null ? null : (pulumi.Input.decodeList<StatefulRuleResponse>(map['statefulRules'], (value) => StatefulRuleResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      statelessRulesAndCustomActions: map['statelessRulesAndCustomActions'] == null ? null : (StatelessRulesAndCustomActionsResponse.fromMap((map['statelessRulesAndCustomActions'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

