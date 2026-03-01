// ignore_for_file: unused_element, unnecessary_cast

import 'runbook_association_property_response.dart';
import 'schedule_association_property_response.dart';

/// Result data returned by getJobSchedule.
class GetJobScheduleResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Gets the id of the resource.
  final String id;
  /// Gets or sets the id of job schedule.
  final String? jobScheduleId;
  /// Gets the name of the variable.
  final String name;
  /// Gets or sets the parameters of the job schedule.
  final Map<String, String>? parameters;
  /// Gets or sets the hybrid worker group that the scheduled job should run on.
  final String? runOn;
  /// Gets or sets the runbook.
  final RunbookAssociationPropertyResponse? runbook;
  /// Gets or sets the schedule.
  final ScheduleAssociationPropertyResponse? schedule;
  /// Resource type
  final String type;

  /// Creates a new [GetJobScheduleResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Gets the id of the resource.
  /// [jobScheduleId] Gets or sets the id of job schedule.
  /// [name] Gets the name of the variable.
  /// [parameters] Gets or sets the parameters of the job schedule.
  /// [runOn] Gets or sets the hybrid worker group that the scheduled job should run on.
  /// [runbook] Gets or sets the runbook.
  /// [schedule] Gets or sets the schedule.
  /// [type] Resource type
  GetJobScheduleResult({
    required this.azureApiVersion,
    required this.id,
    this.jobScheduleId,
    required this.name,
    this.parameters,
    this.runOn,
    this.runbook,
    this.schedule,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'jobScheduleId': ?jobScheduleId,
      'name': name,
      'parameters': ?parameters,
      'runOn': ?runOn,
      'runbook': ?runbook == null ? null : runbook!.toMap(),
      'schedule': ?schedule == null ? null : schedule!.toMap(),
      'type': type,
    };
  }

  factory GetJobScheduleResult.fromMap(Map<String, dynamic> map) {
    return GetJobScheduleResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      jobScheduleId: map['jobScheduleId'] == null ? null : map['jobScheduleId'] as String,
      name: map['name'] as String,
      parameters: map['parameters'] == null ? null : (map['parameters'] as Map).cast<String, String>(),
      runOn: map['runOn'] == null ? null : map['runOn'] as String,
      runbook: map['runbook'] == null ? null : RunbookAssociationPropertyResponse.fromMap((map['runbook'] as Map).cast<String, dynamic>()),
      schedule: map['schedule'] == null ? null : ScheduleAssociationPropertyResponse.fromMap((map['schedule'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

