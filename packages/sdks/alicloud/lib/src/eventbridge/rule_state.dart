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
    pulumi.Output<String>? description,
    pulumi.Output<String>? eventBusName,
    pulumi.Output<String>? filterPattern,
    pulumi.Output<String>? ruleName,
    pulumi.Output<String>? status,
    pulumi.Output<List<RuleTarget>>? targets,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      eventBusName = pulumi.Input.asOptionalInput<String>(eventBusName),
      filterPattern = pulumi.Input.asOptionalInput<String>(filterPattern),
      ruleName = pulumi.Input.asOptionalInput<String>(ruleName),
      status = pulumi.Input.asOptionalInput<String>(status),
      targets = pulumi.Input.asOptionalInput<List<RuleTarget>>(targets);

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
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      eventBusName: map['eventBusName'] == null ? null : pulumi.Output.create<String>(map['eventBusName'] as String),
      filterPattern: map['filterPattern'] == null ? null : pulumi.Output.create<String>(map['filterPattern'] as String),
      ruleName: map['ruleName'] == null ? null : pulumi.Output.create<String>(map['ruleName'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      targets: map['targets'] == null ? null : pulumi.Output.create<List<RuleTarget>>(pulumi.Input.decodeList<RuleTarget>(map['targets'], (value) => RuleTarget.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}

