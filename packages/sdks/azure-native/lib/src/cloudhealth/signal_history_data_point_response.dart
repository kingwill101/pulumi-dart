// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A data point in the signal time series
class SignalHistoryDataPointResponse {
  /// Additional context as provided by the submitter
  final pulumi.Input<String>? additionalContext;
  /// Health state at this point in time
  final pulumi.Input<String> healthState;
  /// Timestamp of the data point
  final pulumi.Input<String> occurredAt;
  /// Signal value at this point in time
  final pulumi.Input<double>? value;

  /// Creates a new [SignalHistoryDataPointResponse].
  /// [additionalContext] Additional context as provided by the submitter
  /// [healthState] Health state at this point in time
  /// [occurredAt] Timestamp of the data point
  /// [value] Signal value at this point in time
  const SignalHistoryDataPointResponse({
    this.additionalContext,
    required this.healthState,
    required this.occurredAt,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalContext': ?additionalContext,
      'healthState': healthState,
      'occurredAt': occurredAt,
      'value': ?value,
    };
  }

  factory SignalHistoryDataPointResponse.fromMap(Map<String, dynamic> map) {
    return SignalHistoryDataPointResponse(
      additionalContext: (() { final guardedValue = map['additionalContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      healthState: pulumi.Input.fromValue(map['healthState'] as String),
      occurredAt: pulumi.Input.fromValue(map['occurredAt'] as String),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
