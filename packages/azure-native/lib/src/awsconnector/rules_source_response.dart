// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rules_source_list_response.dart';
import 'stateful_rule_response.dart';
import 'stateless_rules_and_custom_actions_response.dart';

/// Definition of RulesSource
class RulesSourceResponse {
  /// Property rulesSourceList
  final RulesSourceListResponse? rulesSourceList;
  /// Property rulesString
  final String? rulesString;
  /// Property statefulRules
  final List<StatefulRuleResponse>? statefulRules;
  /// Property statelessRulesAndCustomActions
  final StatelessRulesAndCustomActionsResponse? statelessRulesAndCustomActions;

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
      'rulesSourceList': ?rulesSourceList == null ? null : rulesSourceList!.toMap(),
      'rulesString': ?rulesString,
      'statefulRules': ?statefulRules == null ? null : pulumi.Input.encodeList<StatefulRuleResponse, Map<String, dynamic>>(statefulRules!, (value) => value.toMap()),
      'statelessRulesAndCustomActions': ?statelessRulesAndCustomActions == null ? null : statelessRulesAndCustomActions!.toMap(),
    };
  }

  factory RulesSourceResponse.fromMap(Map<String, dynamic> map) {
    return RulesSourceResponse(
      rulesSourceList: map['rulesSourceList'] == null ? null : RulesSourceListResponse.fromMap((map['rulesSourceList'] as Map).cast<String, dynamic>()),
      rulesString: map['rulesString'] == null ? null : map['rulesString'] as String,
      statefulRules: map['statefulRules'] == null ? null : pulumi.Input.decodeList<StatefulRuleResponse>(map['statefulRules'], (value) => StatefulRuleResponse.fromMap((value as Map).cast<String, dynamic>())),
      statelessRulesAndCustomActions: map['statelessRulesAndCustomActions'] == null ? null : StatelessRulesAndCustomActionsResponse.fromMap((map['statelessRulesAndCustomActions'] as Map).cast<String, dynamic>()),
    );
  }
}

