// ignore_for_file: unused_element, unnecessary_cast

import 'experiment_execution_details_properties_response_run_information.dart';

/// Result data returned by getExperimentExecutionDetails.
class GetExperimentExecutionDetailsResult {
  /// The reason why the execution failed.
  final String failureReason;
  /// String of the fully qualified resource ID.
  final String id;
  /// String that represents the last action date time.
  final String lastActionAt;
  /// String of the resource name.
  final String name;
  /// The information of the experiment run.
  final ExperimentExecutionDetailsPropertiesResponseRunInformation runInformation;
  /// String that represents the start date time.
  final String startedAt;
  /// The status of the execution.
  final String status;
  /// String that represents the stop date time.
  final String stoppedAt;
  /// String of the resource type.
  final String type;

  /// Creates a new [GetExperimentExecutionDetailsResult].
  /// [failureReason] The reason why the execution failed.
  /// [id] String of the fully qualified resource ID.
  /// [lastActionAt] String that represents the last action date time.
  /// [name] String of the resource name.
  /// [runInformation] The information of the experiment run.
  /// [startedAt] String that represents the start date time.
  /// [status] The status of the execution.
  /// [stoppedAt] String that represents the stop date time.
  /// [type] String of the resource type.
  const GetExperimentExecutionDetailsResult({
    required this.failureReason,
    required this.id,
    required this.lastActionAt,
    required this.name,
    required this.runInformation,
    required this.startedAt,
    required this.status,
    required this.stoppedAt,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failureReason': failureReason,
      'id': id,
      'lastActionAt': lastActionAt,
      'name': name,
      'runInformation': runInformation.toMap(),
      'startedAt': startedAt,
      'status': status,
      'stoppedAt': stoppedAt,
      'type': type,
    };
  }

  factory GetExperimentExecutionDetailsResult.fromMap(Map<String, dynamic> map) {
    return GetExperimentExecutionDetailsResult(
      failureReason: map['failureReason'] as String,
      id: map['id'] as String,
      lastActionAt: map['lastActionAt'] as String,
      name: map['name'] as String,
      runInformation: ExperimentExecutionDetailsPropertiesResponseRunInformation.fromMap((map['runInformation']! as Map).cast<String, dynamic>()),
      startedAt: map['startedAt'] as String,
      status: map['status'] as String,
      stoppedAt: map['stoppedAt'] as String,
      type: map['type'] as String,
    );
  }
}

