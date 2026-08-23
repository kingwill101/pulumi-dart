// ignore_for_file: unused_element, unnecessary_cast

import 'runbook_association_property_response.dart';
import 'schedule_association_property_response.dart';
import 'system_data_response.dart';

/// Result data returned by getJobSchedule.
class GetJobScheduleResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Gets or sets the id of job schedule.
  final String? jobScheduleId;
  /// The name of the resource
  final String name;
  /// Gets or sets the parameters of the job schedule.
  final Map<String, String>? parameters;
  /// Gets or sets the hybrid worker group that the scheduled job should run on.
  final String? runOn;
  /// Gets or sets the runbook.
  final RunbookAssociationPropertyResponse? runbook;
  /// Gets or sets the schedule.
  final ScheduleAssociationPropertyResponse? schedule;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetJobScheduleResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [jobScheduleId] Gets or sets the id of job schedule.
  /// [name] The name of the resource
  /// [parameters] Gets or sets the parameters of the job schedule.
  /// [runOn] Gets or sets the hybrid worker group that the scheduled job should run on.
  /// [runbook] Gets or sets the runbook.
  /// [schedule] Gets or sets the schedule.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetJobScheduleResult({
    required this.azureApiVersion,
    required this.id,
    this.jobScheduleId,
    required this.name,
    this.parameters,
    this.runOn,
    this.runbook,
    this.schedule,
    required this.systemData,
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
      'runbook': ?runbook?.toMap(),
      'schedule': ?schedule?.toMap(),
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetJobScheduleResult.fromMap(Map<String, dynamic> map) {
    return GetJobScheduleResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      jobScheduleId: (() { final guardedValue = map['jobScheduleId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      parameters: (() { final guardedValue = map['parameters']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      runOn: (() { final guardedValue = map['runOn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      runbook: (() { final guardedValue = map['runbook']; if (guardedValue == null) return null; return RunbookAssociationPropertyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      schedule: (() { final guardedValue = map['schedule']; if (guardedValue == null) return null; return ScheduleAssociationPropertyResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}
