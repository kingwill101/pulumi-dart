// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A health state transition record
class HealthStateTransitionResponse {
  /// New health state after the transition
  final pulumi.Input<String> newState;
  /// Timestamp when the transition occurred
  final pulumi.Input<String> occurredAt;
  /// Previous health state before the transition
  final pulumi.Input<String> previousState;
  /// Reason of the transition
  final pulumi.Input<String>? reason;

  /// Creates a new [HealthStateTransitionResponse].
  /// [newState] New health state after the transition
  /// [occurredAt] Timestamp when the transition occurred
  /// [previousState] Previous health state before the transition
  /// [reason] Reason of the transition
  const HealthStateTransitionResponse({
    required this.newState,
    required this.occurredAt,
    required this.previousState,
    this.reason,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'newState': newState,
      'occurredAt': occurredAt,
      'previousState': previousState,
      'reason': ?reason,
    };
  }

  factory HealthStateTransitionResponse.fromMap(Map<String, dynamic> map) {
    return HealthStateTransitionResponse(
      newState: pulumi.Input.fromValue(map['newState'] as String),
      occurredAt: pulumi.Input.fromValue(map['occurredAt'] as String),
      previousState: pulumi.Input.fromValue(map['previousState'] as String),
      reason: (() { final guardedValue = map['reason']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
