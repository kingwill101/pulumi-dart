// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class SafetyLeverStateState {
  /// Reason for the current status of the safety lever.
  final pulumi.Input<String> reason;
  /// Status of the safety lever. Valid values: `engaged`, `disengaged`. Engaging the lever immediately stops all running experiments in the account and Region, and prevents new ones from starting.
  final pulumi.Input<String> status;

  /// Creates a new [SafetyLeverStateState].
  /// [reason] Reason for the current status of the safety lever.
  /// [status] Status of the safety lever. Valid values: `engaged`, `disengaged`. Engaging the lever immediately stops all running experiments in the account and Region, and prevents new ones from starting.
  const SafetyLeverStateState({
    required this.reason,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'reason': reason,
      'status': status,
    };
  }

  factory SafetyLeverStateState.fromMap(Map<String, dynamic> map) {
    return SafetyLeverStateState(
      reason: pulumi.Input.fromValue(map['reason'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
    );
  }
}
