// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_target.dart';

/// {@template pulumi_eventbridge_rule_rule_args_doc}
/// The set of arguments for Rule.
/// {@endtemplate}
/// {@macro pulumi_eventbridge_rule_rule_args_doc}
class RuleArgs {
  /// The description of the event rule.
  final pulumi.Input<String>? description;
  /// The name of the event bus.
  final pulumi.Input<String> eventBusName;
  /// The pattern to match interested events. Event mode, JSON format. The value description is as follows: `stringEqual` mode. `stringExpression` mode. Each field has up to 5 expressions (map structure).
  final pulumi.Input<String> filterPattern;
  /// The name of the event rule.
  final pulumi.Input<String> ruleName;
  /// The status of the event rule. Valid values: `ENABLE`, `DISABLE`.
  final pulumi.Input<String>? status;
  /// The targets of rule. See `targets` below.
  final pulumi.Input<List<RuleTarget>> targets;

  /// Creates a new [RuleArgs].
  /// [description] The description of the event rule.
  /// [eventBusName] The name of the event bus.
  /// [filterPattern] The pattern to match interested events. Event mode, JSON format. The value description is as follows: `stringEqual` mode. `stringExpression` mode. Each field has up to 5 expressions (map structure).
  /// [ruleName] The name of the event rule.
  /// [status] The status of the event rule. Valid values: `ENABLE`, `DISABLE`.
  /// [targets] The targets of rule. See `targets` below.
  RuleArgs({
    this.description,
    required this.eventBusName,
    required this.filterPattern,
    required this.ruleName,
    this.status,
    required this.targets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'eventBusName': eventBusName,
      'filterPattern': filterPattern,
      'ruleName': ruleName,
      'status': ?status,
      'targets': pulumi.Input.mapInputValue<List<RuleTarget>, List<Map<String, dynamic>>>(targets, (value) => pulumi.Input.encodeList<RuleTarget, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RuleArgs.fromMap(Map<String, dynamic> map) {
    return RuleArgs(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventBusName: pulumi.Input.fromValue(map['eventBusName'] as String),
      filterPattern: pulumi.Input.fromValue(map['filterPattern'] as String),
      ruleName: pulumi.Input.fromValue(map['ruleName'] as String),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      targets: pulumi.Input.fromValue(pulumi.Input.decodeList<RuleTarget>(map['targets']!, (value) => RuleTarget.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

