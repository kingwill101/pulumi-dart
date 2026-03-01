// ignore_for_file: unused_element, unnecessary_cast

import 'statement_action_properties_response.dart';
import 'statement_condition_properties_response.dart';

/// Route Policy Statement properties.
class RoutePolicyStatementPropertiesResponse {
  /// Route policy action properties.
  final StatementActionPropertiesResponse action;
  /// Switch configuration description.
  final String? annotation;
  /// Route policy condition properties.
  final StatementConditionPropertiesResponse condition;
  /// Sequence to insert to/delete from existing route.
  final double sequenceNumber;

  /// Creates a new [RoutePolicyStatementPropertiesResponse].
  /// [action] Route policy action properties.
  /// [annotation] Switch configuration description.
  /// [condition] Route policy condition properties.
  /// [sequenceNumber] Sequence to insert to/delete from existing route.
  RoutePolicyStatementPropertiesResponse({
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

  factory RoutePolicyStatementPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return RoutePolicyStatementPropertiesResponse(
      action: StatementActionPropertiesResponse.fromMap((map['action'] as Map).cast<String, dynamic>()),
      annotation: map['annotation'] == null ? null : map['annotation'] as String,
      condition: StatementConditionPropertiesResponse.fromMap((map['condition'] as Map).cast<String, dynamic>()),
      sequenceNumber: map['sequenceNumber'] as double,
    );
  }
}

