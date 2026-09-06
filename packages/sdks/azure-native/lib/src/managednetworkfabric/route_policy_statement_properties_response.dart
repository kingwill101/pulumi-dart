// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'statement_action_properties_response.dart';
import 'statement_condition_properties_response.dart';

/// Route Policy Statement properties.
class RoutePolicyStatementPropertiesResponse {
  /// Route policy action properties.
  final pulumi.Input<StatementActionPropertiesResponse> action;
  /// Switch configuration description.
  final pulumi.Input<String?>? annotation;
  /// Route policy condition properties.
  final pulumi.Input<StatementConditionPropertiesResponse> condition;
  /// Sequence to insert to/delete from existing route.
  final pulumi.Input<double> sequenceNumber;

  /// Creates a new [RoutePolicyStatementPropertiesResponse].
  /// [action] Route policy action properties.
  /// [annotation] Switch configuration description.
  /// [condition] Route policy condition properties.
  /// [sequenceNumber] Sequence to insert to/delete from existing route.
  const RoutePolicyStatementPropertiesResponse({
    required this.action,
    this.annotation,
    required this.condition,
    required this.sequenceNumber,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': pulumi.Input.mapInputValue<StatementActionPropertiesResponse, Map<String, dynamic>>(action, (value) => value.toMap()),
      'annotation': ?annotation,
      'condition': pulumi.Input.mapInputValue<StatementConditionPropertiesResponse, Map<String, dynamic>>(condition, (value) => value.toMap()),
      'sequenceNumber': sequenceNumber,
    };
  }

  factory RoutePolicyStatementPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return RoutePolicyStatementPropertiesResponse(
      action: pulumi.Input.fromValue(StatementActionPropertiesResponse.fromMap((map['action']! as Map).cast<String, dynamic>())),
      annotation: (() { final guardedValue = map['annotation']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      condition: pulumi.Input.fromValue(StatementConditionPropertiesResponse.fromMap((map['condition']! as Map).cast<String, dynamic>())),
      sequenceNumber: pulumi.Input.fromValue((map['sequenceNumber'] as num).toDouble()),
    );
  }
}
