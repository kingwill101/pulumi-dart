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
    String? description,
    required String eventBusName,
    required String filterPattern,
    required String ruleName,
    String? status,
    required List<RuleTarget> targets,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      eventBusName = pulumi.Input.asInput<String>(eventBusName),
      filterPattern = pulumi.Input.asInput<String>(filterPattern),
      ruleName = pulumi.Input.asInput<String>(ruleName),
      status = pulumi.Input.asOptionalInput<String>(status),
      targets = pulumi.Input.asInput<List<RuleTarget>>(targets);

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
      description: map['description'] == null ? null : map['description'] as String,
      eventBusName: map['eventBusName'] as String,
      filterPattern: map['filterPattern'] as String,
      ruleName: map['ruleName'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      targets: pulumi.Input.decodeList<RuleTarget>(map['targets'], (value) => RuleTarget.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

