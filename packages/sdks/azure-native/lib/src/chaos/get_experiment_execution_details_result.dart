// ignore_for_file: unused_element, unnecessary_cast

import 'experiment_execution_details_properties_response_run_information.dart';

/// Result data returned by getExperimentExecutionDetails.
class GetExperimentExecutionDetailsResult {
  /// The reason why the execution failed.
  final String? failureReason;
  /// String of the fully qualified resource ID.
  final String? id;
  /// String that represents the last action date time.
  final String? lastActionAt;
  /// String of the resource name.
  final String? name;
  /// The information of the experiment run.
  final ExperimentExecutionDetailsPropertiesResponseRunInformation? runInformation;
  /// String that represents the start date time.
  final String? startedAt;
  /// The status of the execution.
  final String? status;
  /// String that represents the stop date time.
  final String? stoppedAt;
  /// String of the resource type.
  final String? type;

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
    this.failureReason,
    this.id,
    this.lastActionAt,
    this.name,
    this.runInformation,
    this.startedAt,
    this.status,
    this.stoppedAt,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failureReason': ?failureReason,
      'id': ?id,
      'lastActionAt': ?lastActionAt,
      'name': ?name,
      'runInformation': ?runInformation?.toMap(),
      'startedAt': ?startedAt,
      'status': ?status,
      'stoppedAt': ?stoppedAt,
      'type': ?type,
    };
  }

  factory GetExperimentExecutionDetailsResult.fromMap(Map<String, dynamic> map) {
    return GetExperimentExecutionDetailsResult(
      failureReason: (() { final guardedValue = map['failureReason']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      lastActionAt: (() { final guardedValue = map['lastActionAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      runInformation: (() { final guardedValue = map['runInformation']; if (guardedValue == null) return null; return ExperimentExecutionDetailsPropertiesResponseRunInformation.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      startedAt: (() { final guardedValue = map['startedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
      stoppedAt: (() { final guardedValue = map['stoppedAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
