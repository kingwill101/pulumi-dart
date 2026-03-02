// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rule_target.dart';

/// Input properties used for looking up and filtering Rule resources.
class RuleState {
  /// The description of the event rule.
  final pulumi.Input<String>? description;
  /// The name of the event bus.
  final pulumi.Input<String>? eventBusName;
  /// The pattern to match interested events. Event mode, JSON format. The value description is as follows: `stringEqual` mode. `stringExpression` mode. Each field has up to 5 expressions (map structure).
  final pulumi.Input<String>? filterPattern;
  /// The name of the event rule.
  final pulumi.Input<String>? ruleName;
  /// The status of the event rule. Valid values: `ENABLE`, `DISABLE`.
  final pulumi.Input<String>? status;
  /// The targets of rule. See `targets` below.
  final pulumi.Input<List<RuleTarget>>? targets;

  /// Creates a new [RuleState].
  /// [description] The description of the event rule.
  /// [eventBusName] The name of the event bus.
  /// [filterPattern] The pattern to match interested events. Event mode, JSON format. The value description is as follows: `stringEqual` mode. `stringExpression` mode. Each field has up to 5 expressions (map structure).
  /// [ruleName] The name of the event rule.
  /// [status] The status of the event rule. Valid values: `ENABLE`, `DISABLE`.
  /// [targets] The targets of rule. See `targets` below.
  RuleState({
    this.description,
    this.eventBusName,
    this.filterPattern,
    this.ruleName,
    this.status,
    this.targets,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'eventBusName': ?eventBusName,
      'filterPattern': ?filterPattern,
      'ruleName': ?ruleName,
      'status': ?status,
      'targets': ?pulumi.Input.mapOptionalInputValue<List<RuleTarget>, List<Map<String, dynamic>>>(targets, (value) => pulumi.Input.encodeList<RuleTarget, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory RuleState.fromMap(Map<String, dynamic> map) {
    return RuleState(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      eventBusName: map['eventBusName'] == null ? null : (map['eventBusName'] as String).input(),
      filterPattern: map['filterPattern'] == null ? null : (map['filterPattern'] as String).input(),
      ruleName: map['ruleName'] == null ? null : (map['ruleName'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      targets: map['targets'] == null ? null : (pulumi.Input.decodeList<RuleTarget>(map['targets'], (value) => RuleTarget.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

