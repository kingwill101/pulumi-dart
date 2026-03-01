// ignore_for_file: unused_element, unnecessary_cast

import 'experiment_execution_action_target_details_error_response.dart';

/// Model that represents the Experiment action target details properties model.
class ExperimentExecutionActionTargetDetailsPropertiesResponse {
  /// The error of the action.
  final ExperimentExecutionActionTargetDetailsErrorResponse error;
  /// The status of the execution.
  final String status;
  /// The target for the action.
  final String target;
  /// String that represents the completed date time.
  final String targetCompletedTime;
  /// String that represents the failed date time.
  final String targetFailedTime;

  /// Creates a new [ExperimentExecutionActionTargetDetailsPropertiesResponse].
  /// [error] The error of the action.
  /// [status] The status of the execution.
  /// [target] The target for the action.
  /// [targetCompletedTime] String that represents the completed date time.
  /// [targetFailedTime] String that represents the failed date time.
  ExperimentExecutionActionTargetDetailsPropertiesResponse({
    required this.error,
    required this.status,
    required this.target,
    required this.targetCompletedTime,
    required this.targetFailedTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error': error.toMap(),
      'status': status,
      'target': target,
      'targetCompletedTime': targetCompletedTime,
      'targetFailedTime': targetFailedTime,
    };
  }

  factory ExperimentExecutionActionTargetDetailsPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ExperimentExecutionActionTargetDetailsPropertiesResponse(
      error: ExperimentExecutionActionTargetDetailsErrorResponse.fromMap((map['error'] as Map).cast<String, dynamic>()),
      status: map['status'] as String,
      target: map['target'] as String,
      targetCompletedTime: map['targetCompletedTime'] as String,
      targetFailedTime: map['targetFailedTime'] as String,
    );
  }
}

