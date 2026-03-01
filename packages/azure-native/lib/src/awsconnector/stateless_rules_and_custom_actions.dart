// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_action.dart';
import 'stateless_rule.dart';

/// Definition of StatelessRulesAndCustomActions
class StatelessRulesAndCustomActions {
  /// Property customActions
  final List<CustomAction>? customActions;
  /// Property statelessRules
  final List<StatelessRule>? statelessRules;

  /// Creates a new [StatelessRulesAndCustomActions].
  /// [customActions] Property customActions
  /// [statelessRules] Property statelessRules
  StatelessRulesAndCustomActions({
    this.customActions,
    this.statelessRules,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'customActions': ?customActions == null ? null : pulumi.Input.encodeList<CustomAction, Map<String, dynamic>>(customActions!, (value) => value.toMap()),
      'statelessRules': ?statelessRules == null ? null : pulumi.Input.encodeList<StatelessRule, Map<String, dynamic>>(statelessRules!, (value) => value.toMap()),
    };
  }

  factory StatelessRulesAndCustomActions.fromMap(Map<String, dynamic> map) {
    return StatelessRulesAndCustomActions(
      customActions: map['customActions'] == null ? null : pulumi.Input.decodeList<CustomAction>(map['customActions'], (value) => CustomAction.fromMap((value as Map).cast<String, dynamic>())),
      statelessRules: map['statelessRules'] == null ? null : pulumi.Input.decodeList<StatelessRule>(map['statelessRules'], (value) => StatelessRule.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

