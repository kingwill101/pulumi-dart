// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'statement_action_properties.dart';
import 'statement_condition_properties.dart';

/// Route Policy Statement properties.
class RoutePolicyStatementProperties {
  /// Route policy action properties.
  final pulumi.Input<StatementActionProperties> action;
  /// Switch configuration description.
  final pulumi.Input<String>? annotation;
  /// Route policy condition properties.
  final pulumi.Input<StatementConditionProperties> condition;
  /// Sequence to insert to/delete from existing route.
  final pulumi.Input<double> sequenceNumber;

  /// Creates a new [RoutePolicyStatementProperties].
  /// [action] Route policy action properties.
  /// [annotation] Switch configuration description.
  /// [condition] Route policy condition properties.
  /// [sequenceNumber] Sequence to insert to/delete from existing route.
  RoutePolicyStatementProperties({
    required this.action,
    this.annotation,
    required this.condition,
    required this.sequenceNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': pulumi.Input.mapInputValue<StatementActionProperties, Map<String, dynamic>>(action, (value) => value.toMap()),
      'annotation': ?annotation,
      'condition': pulumi.Input.mapInputValue<StatementConditionProperties, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'sequenceNumber': sequenceNumber,
    };
  }

  factory RoutePolicyStatementProperties.fromMap(Map<String, dynamic> map) {
    return RoutePolicyStatementProperties(
      action: (StatementActionProperties.fromMap((map['action'] as Map).cast<String, dynamic>())).input(),
      annotation: map['annotation'] == null ? null : (map['annotation'] as String).input(),
      condition: (StatementConditionProperties.fromMap((map['condition'] as Map).cast<String, dynamic>())).input(),
      sequenceNumber: (map['sequenceNumber'] as double).input(),
    );
  }
}

