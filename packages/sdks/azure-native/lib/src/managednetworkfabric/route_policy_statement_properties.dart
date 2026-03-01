// ignore_for_file: unused_element, unnecessary_cast

import 'statement_action_properties.dart';
import 'statement_condition_properties.dart';

/// Route Policy Statement properties.
class RoutePolicyStatementProperties {
  /// Route policy action properties.
  final StatementActionProperties action;
  /// Switch configuration description.
  final String? annotation;
  /// Route policy condition properties.
  final StatementConditionProperties condition;
  /// Sequence to insert to/delete from existing route.
  final double sequenceNumber;

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
      'action': action.toMap(),
      'annotation': ?annotation,
      'condition': condition.toMap(),
      'sequenceNumber': sequenceNumber,
    };
  }

  factory RoutePolicyStatementProperties.fromMap(Map<String, dynamic> map) {
    return RoutePolicyStatementProperties(
      action: StatementActionProperties.fromMap((map['action'] as Map).cast<String, dynamic>()),
      annotation: map['annotation'] == null ? null : map['annotation'] as String,
      condition: StatementConditionProperties.fromMap((map['condition'] as Map).cast<String, dynamic>()),
      sequenceNumber: map['sequenceNumber'] as double,
    );
  }
}

