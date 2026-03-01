// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'match_condition.dart';

/// Defines the common attributes for a custom rule that can be included in a waf policy
class CustomRule {
  /// Describes what action to be applied when rule matches
  final String action;
  /// Describes if the custom rule is in enabled or disabled state. Defaults to Enabled if not specified.
  final String? enabledState;
  /// List of match conditions.
  final List<MatchCondition> matchConditions;
  /// Defines the name of the custom rule
  final String name;
  /// Defines in what order this rule be evaluated in the overall list of custom rules
  final int priority;

  /// Creates a new [CustomRule].
  /// [action] Describes what action to be applied when rule matches
  /// [enabledState] Describes if the custom rule is in enabled or disabled state. Defaults to Enabled if not specified.
  /// [matchConditions] List of match conditions.
  /// [name] Defines the name of the custom rule
  /// [priority] Defines in what order this rule be evaluated in the overall list of custom rules
  CustomRule({
    required this.action,
    this.enabledState,
    required this.matchConditions,
    required this.name,
    required this.priority,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'enabledState': ?enabledState,
      'matchConditions': pulumi.Input.encodeList<MatchCondition, Map<String, dynamic>>(matchConditions, (value) => value.toMap()),
      'name': name,
      'priority': priority,
    };
  }

  factory CustomRule.fromMap(Map<String, dynamic> map) {
    return CustomRule(
      action: map['action'] as String,
      enabledState: map['enabledState'] == null ? null : map['enabledState'] as String,
      matchConditions: pulumi.Input.decodeList<MatchCondition>(map['matchConditions'], (value) => MatchCondition.fromMap((value as Map).cast<String, dynamic>())),
      name: map['name'] as String,
      priority: map['priority'] as int,
    );
  }
}

