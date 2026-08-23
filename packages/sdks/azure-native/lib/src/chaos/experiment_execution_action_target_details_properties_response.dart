// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'experiment_execution_action_target_details_error_response.dart';

/// Model that represents the Experiment action target details properties model.
class ExperimentExecutionActionTargetDetailsPropertiesResponse {
  /// The error of the action.
  final pulumi.Input<ExperimentExecutionActionTargetDetailsErrorResponse> error;
  /// The status of the execution.
  final pulumi.Input<String> status;
  /// The target for the action.
  final pulumi.Input<String> target;
  /// String that represents the completed date time.
  final pulumi.Input<String> targetCompletedTime;
  /// String that represents the failed date time.
  final pulumi.Input<String> targetFailedTime;

  /// Creates a new [ExperimentExecutionActionTargetDetailsPropertiesResponse].
  /// [error] The error of the action.
  /// [status] The status of the execution.
  /// [target] The target for the action.
  /// [targetCompletedTime] String that represents the completed date time.
  /// [targetFailedTime] String that represents the failed date time.
  const ExperimentExecutionActionTargetDetailsPropertiesResponse({
    required this.error,
    required this.status,
    required this.target,
    required this.targetCompletedTime,
    required this.targetFailedTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'error': pulumi.Input.mapInputValue<ExperimentExecutionActionTargetDetailsErrorResponse, Map<String, dynamic>>(error, (value) => value.toMap()),
      'status': status,
      'target': target,
      'targetCompletedTime': targetCompletedTime,
      'targetFailedTime': targetFailedTime,
    };
  }

  factory ExperimentExecutionActionTargetDetailsPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ExperimentExecutionActionTargetDetailsPropertiesResponse(
      error: pulumi.Input.fromValue(ExperimentExecutionActionTargetDetailsErrorResponse.fromMap((map['error']! as Map).cast<String, dynamic>())),
      status: pulumi.Input.fromValue(map['status'] as String),
      target: pulumi.Input.fromValue(map['target'] as String),
      targetCompletedTime: pulumi.Input.fromValue(map['targetCompletedTime'] as String),
      targetFailedTime: pulumi.Input.fromValue(map['targetFailedTime'] as String),
    );
  }
}
