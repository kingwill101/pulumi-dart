// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_action_response.dart';
import 'stateless_rule_response.dart';

/// Definition of StatelessRulesAndCustomActions
class StatelessRulesAndCustomActionsResponse {
  /// Property customActions
  final pulumi.Input<List<CustomActionResponse>>? customActions;
  /// Property statelessRules
  final pulumi.Input<List<StatelessRuleResponse>>? statelessRules;

  /// Creates a new [StatelessRulesAndCustomActionsResponse].
  /// [customActions] Property customActions
  /// [statelessRules] Property statelessRules
  StatelessRulesAndCustomActionsResponse({
    this.customActions,
    this.statelessRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customActions': ?pulumi.Input.mapOptionalInputValue<List<CustomActionResponse>, List<Map<String, dynamic>>>(customActions, (value) => pulumi.Input.encodeList<CustomActionResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'statelessRules': ?pulumi.Input.mapOptionalInputValue<List<StatelessRuleResponse>, List<Map<String, dynamic>>>(statelessRules, (value) => pulumi.Input.encodeList<StatelessRuleResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory StatelessRulesAndCustomActionsResponse.fromMap(Map<String, dynamic> map) {
    return StatelessRulesAndCustomActionsResponse(
      customActions: map['customActions'] == null ? null : (pulumi.Input.decodeList<CustomActionResponse>(map['customActions']!, (value) => CustomActionResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
      statelessRules: map['statelessRules'] == null ? null : (pulumi.Input.decodeList<StatelessRuleResponse>(map['statelessRules']!, (value) => StatelessRuleResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

