// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Progress representation of the update run steps.
class Step {
  /// More detailed description of the step.
  final String? description;
  /// When the step reached a terminal state.
  final String? endTimeUtc;
  /// Error message, specified if the step is in a failed state.
  final String? errorMessage;
  /// Expected execution time of a given step. This is optionally authored in the update action plan and can be empty.
  final String? expectedExecutionTime;
  /// Completion time of this step or the last completed sub-step.
  final String? lastUpdatedTimeUtc;
  /// Name of the step.
  final String? name;
  /// When the step started, or empty if it has not started executing.
  final String? startTimeUtc;
  /// Status of the step, bubbled up from the ECE action plan for installation attempts. Values are: 'Success', 'Error', 'InProgress', and 'Unknown status'.
  final String? status;
  /// Recursive model for child steps of this step.
  final List<Step>? steps;

  /// Creates a new [Step].
  /// [description] More detailed description of the step.
  /// [endTimeUtc] When the step reached a terminal state.
  /// [errorMessage] Error message, specified if the step is in a failed state.
  /// [expectedExecutionTime] Expected execution time of a given step. This is optionally authored in the update action plan and can be empty.
  /// [lastUpdatedTimeUtc] Completion time of this step or the last completed sub-step.
  /// [name] Name of the step.
  /// [startTimeUtc] When the step started, or empty if it has not started executing.
  /// [status] Status of the step, bubbled up from the ECE action plan for installation attempts. Values are: 'Success', 'Error', 'InProgress', and 'Unknown status'.
  /// [steps] Recursive model for child steps of this step.
  Step({
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
      'steps': ?steps == null ? null : pulumi.Input.encodeList<Step, Map<String, dynamic>>(steps!, (value) => value.toMap()),
    };
  }

  factory Step.fromMap(Map<String, dynamic> map) {
    return Step(
      description: map['description'] == null ? null : map['description'] as String,
      endTimeUtc: map['endTimeUtc'] == null ? null : map['endTimeUtc'] as String,
      errorMessage: map['errorMessage'] == null ? null : map['errorMessage'] as String,
      expectedExecutionTime: map['expectedExecutionTime'] == null ? null : map['expectedExecutionTime'] as String,
      lastUpdatedTimeUtc: map['lastUpdatedTimeUtc'] == null ? null : map['lastUpdatedTimeUtc'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      startTimeUtc: map['startTimeUtc'] == null ? null : map['startTimeUtc'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      steps: map['steps'] == null ? null : pulumi.Input.decodeList<Step>(map['steps'], (value) => Step.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

