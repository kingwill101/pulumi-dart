// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetJobDefinitionRetryStrategyEvaluateOnExit {
  /// Specifies the action to take if all of the specified conditions (onStatusReason, onReason, and onExitCode) are met. The values aren't case sensitive.
  final pulumi.Input<String> action;

  /// Contains a glob pattern to match against the decimal representation of the ExitCode returned for a job.
  final pulumi.Input<String> onExitCode;

  /// Contains a glob pattern to match against the Reason returned for a job.
  final pulumi.Input<String> onReason;

  /// Contains a glob pattern to match against the StatusReason returned for a job.
  final pulumi.Input<String> onStatusReason;

  /// Creates a new [GetJobDefinitionRetryStrategyEvaluateOnExit].
  /// [action] Specifies the action to take if all of the specified conditions (onStatusReason, onReason, and onExitCode) are met. The values aren't case sensitive.
  /// [onExitCode] Contains a glob pattern to match against the decimal representation of the ExitCode returned for a job.
  /// [onReason] Contains a glob pattern to match against the Reason returned for a job.
  /// [onStatusReason] Contains a glob pattern to match against the StatusReason returned for a job.
  GetJobDefinitionRetryStrategyEvaluateOnExit({
    required this.action,
    required this.onExitCode,
    required this.onReason,
    required this.onStatusReason,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'action': action,
      'onExitCode': onExitCode,
      'onReason': onReason,
      'onStatusReason': onStatusReason,
    };
  }

  factory GetJobDefinitionRetryStrategyEvaluateOnExit.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetJobDefinitionRetryStrategyEvaluateOnExit(
      action: pulumi.Input.fromValue(map['action'] as String),
      onExitCode: pulumi.Input.fromValue(map['onExitCode'] as String),
      onReason: pulumi.Input.fromValue(map['onReason'] as String),
      onStatusReason: pulumi.Input.fromValue(map['onStatusReason'] as String),
    );
  }
}
