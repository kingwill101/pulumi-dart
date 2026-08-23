// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_action.dart';
import 'stateless_rule.dart';

/// Definition of StatelessRulesAndCustomActions
class StatelessRulesAndCustomActions {
  /// Property customActions
  final pulumi.Input<List<CustomAction>>? customActions;
  /// Property statelessRules
  final pulumi.Input<List<StatelessRule>>? statelessRules;

  /// Creates a new [StatelessRulesAndCustomActions].
  /// [customActions] Property customActions
  /// [statelessRules] Property statelessRules
  const StatelessRulesAndCustomActions({
    this.customActions,
    this.statelessRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customActions': ?pulumi.Input.mapOptionalInputValue<List<CustomAction>, List<Map<String, dynamic>>>(customActions, (value) => pulumi.Input.encodeList<CustomAction, Map<String, dynamic>>(value, (value) => value.toMap())),
      'statelessRules': ?pulumi.Input.mapOptionalInputValue<List<StatelessRule>, List<Map<String, dynamic>>>(statelessRules, (value) => pulumi.Input.encodeList<StatelessRule, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory StatelessRulesAndCustomActions.fromMap(Map<String, dynamic> map) {
    return StatelessRulesAndCustomActions(
      customActions: (() { final guardedValue = map['customActions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<CustomAction>(guardedValue, (value) => CustomAction.fromMap((value as Map).cast<String, dynamic>()))); })(),
      statelessRules: (() { final guardedValue = map['statelessRules']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<StatelessRule>(guardedValue, (value) => StatelessRule.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
