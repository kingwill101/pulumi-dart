// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Progress representation of the update run steps.
class StepResponse {
  /// More detailed description of the step.
  final pulumi.Input<String>? description;
  /// When the step reached a terminal state.
  final pulumi.Input<String>? endTimeUtc;
  /// Error message, specified if the step is in a failed state.
  final pulumi.Input<String>? errorMessage;
  /// Expected execution time of a given step. This is optionally authored in the update action plan and can be empty.
  final pulumi.Input<String>? expectedExecutionTime;
  /// Completion time of this step or the last completed sub-step.
  final pulumi.Input<String>? lastUpdatedTimeUtc;
  /// Name of the step.
  final pulumi.Input<String>? name;
  /// When the step started, or empty if it has not started executing.
  final pulumi.Input<String>? startTimeUtc;
  /// Status of the step, bubbled up from the ECE action plan for installation attempts. Values are: 'Success', 'Error', 'InProgress', and 'Unknown status'.
  final pulumi.Input<String>? status;
  /// Recursive model for child steps of this step.
  final pulumi.Input<List<StepResponse>>? steps;

  /// Creates a new [StepResponse].
  /// [description] More detailed description of the step.
  /// [endTimeUtc] When the step reached a terminal state.
  /// [errorMessage] Error message, specified if the step is in a failed state.
  /// [expectedExecutionTime] Expected execution time of a given step. This is optionally authored in the update action plan and can be empty.
  /// [lastUpdatedTimeUtc] Completion time of this step or the last completed sub-step.
  /// [name] Name of the step.
  /// [startTimeUtc] When the step started, or empty if it has not started executing.
  /// [status] Status of the step, bubbled up from the ECE action plan for installation attempts. Values are: 'Success', 'Error', 'InProgress', and 'Unknown status'.
  /// [steps] Recursive model for child steps of this step.
  StepResponse({
    this.description,
    this.endTimeUtc,
    this.errorMessage,
    this.expectedExecutionTime,
    this.lastUpdatedTimeUtc,
    this.name,
    this.startTimeUtc,
    this.status,
    this.steps,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'endTimeUtc': ?endTimeUtc,
      'errorMessage': ?errorMessage,
      'expectedExecutionTime': ?expectedExecutionTime,
      'lastUpdatedTimeUtc': ?lastUpdatedTimeUtc,
      'name': ?name,
      'startTimeUtc': ?startTimeUtc,
      'status': ?status,
      'steps': ?pulumi.Input.mapOptionalInputValue<List<StepResponse>, List<Map<String, dynamic>>>(steps, (value) => pulumi.Input.encodeList<StepResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory StepResponse.fromMap(Map<String, dynamic> map) {
    return StepResponse(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      endTimeUtc: map['endTimeUtc'] == null ? null : (map['endTimeUtc'] as String).input(),
      errorMessage: map['errorMessage'] == null ? null : (map['errorMessage'] as String).input(),
      expectedExecutionTime: map['expectedExecutionTime'] == null ? null : (map['expectedExecutionTime'] as String).input(),
      lastUpdatedTimeUtc: map['lastUpdatedTimeUtc'] == null ? null : (map['lastUpdatedTimeUtc'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      startTimeUtc: map['startTimeUtc'] == null ? null : (map['startTimeUtc'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      steps: map['steps'] == null ? null : (pulumi.Input.decodeList<StepResponse>(map['steps'], (value) => StepResponse.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

