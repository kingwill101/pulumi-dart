// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'match_condition.dart';

/// Defines the common attributes for a custom rule that can be included in a waf policy
class CustomRule {
  /// Describes what action to be applied when rule matches
  final pulumi.Input<String> action;
  /// Describes if the custom rule is in enabled or disabled state. Defaults to Enabled if not specified.
  final pulumi.Input<String>? enabledState;
  /// List of match conditions.
  final pulumi.Input<List<MatchCondition>> matchConditions;
  /// Defines the name of the custom rule
  final pulumi.Input<String> name;
  /// Defines in what order this rule be evaluated in the overall list of custom rules
  final pulumi.Input<int> priority;

  /// Creates a new [CustomRule].
  /// [action] Describes what action to be applied when rule matches
  /// [enabledState] Describes if the custom rule is in enabled or disabled state. Defaults to Enabled if not specified.
  /// [matchConditions] List of match conditions.
  /// [name] Defines the name of the custom rule
  /// [priority] Defines in what order this rule be evaluated in the overall list of custom rules
  const CustomRule({
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
      'matchConditions': pulumi.Input.mapInputValue<List<MatchCondition>, List<Map<String, dynamic>>>(matchConditions, (value) => pulumi.Input.encodeList<MatchCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'name': name,
      'priority': priority,
    };
  }

  factory CustomRule.fromMap(Map<String, dynamic> map) {
    return CustomRule(
      action: pulumi.Input.fromValue(map['action'] as String),
      enabledState: (() { final guardedValue = map['enabledState']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      matchConditions: pulumi.Input.fromValue(pulumi.Input.decodeList<MatchCondition>(map['matchConditions']!, (value) => MatchCondition.fromMap((value as Map).cast<String, dynamic>()))),
      name: pulumi.Input.fromValue(map['name'] as String),
      priority: pulumi.Input.fromValue(map['priority'] as int),
    );
  }
}

