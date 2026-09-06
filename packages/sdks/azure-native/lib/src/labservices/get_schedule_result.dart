// ignore_for_file: unused_element, unnecessary_cast

import 'recurrence_pattern_response.dart';
import 'resource_operation_error_response.dart';
import 'system_data_response.dart';

/// Result data returned by getSchedule.
class GetScheduleResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// The name of the resource
  final String? name;
  /// Notes for this schedule.
  final String? notes;
  /// Current provisioning state of the schedule.
  final String? provisioningState;
  /// The recurrence pattern of the scheduled actions.
  final RecurrencePatternResponse? recurrencePattern;
  /// Error details of last operation done on schedule.
  final ResourceOperationErrorResponse? resourceOperationError;
  /// When lab user virtual machines will be started. Timestamp offsets will be ignored and timeZoneId is used instead.
  final String? startAt;
  /// When lab user virtual machines will be stopped. Timestamp offsets will be ignored and timeZoneId is used instead.
  final String? stopAt;
  /// Metadata pertaining to creation and last modification of the schedule.
  final SystemDataResponse? systemData;
  /// The IANA timezone id for the schedule.
  final String? timeZoneId;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

  /// Creates a new [GetScheduleResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [name] The name of the resource
  /// [notes] Notes for this schedule.
  /// [provisioningState] Current provisioning state of the schedule.
  /// [recurrencePattern] The recurrence pattern of the scheduled actions.
  /// [resourceOperationError] Error details of last operation done on schedule.
  /// [startAt] When lab user virtual machines will be started. Timestamp offsets will be ignored and timeZoneId is used instead.
  /// [stopAt] When lab user virtual machines will be stopped. Timestamp offsets will be ignored and timeZoneId is used instead.
  /// [systemData] Metadata pertaining to creation and last modification of the schedule.
  /// [timeZoneId] The IANA timezone id for the schedule.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetScheduleResult({
    this.azureApiVersion,
    this.id,
    this.name,
    this.notes,
    this.provisioningState,
    this.recurrencePattern,
    this.resourceOperationError,
    this.startAt,
    this.stopAt,
    this.systemData,
    this.timeZoneId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'name': ?name,
      'notes': ?notes,
      'provisioningState': ?provisioningState,
      'recurrencePattern': ?recurrencePattern?.toMap(),
      'resourceOperationError': ?resourceOperationError?.toMap(),
      'startAt': ?startAt,
      'stopAt': ?stopAt,
      'systemData': ?systemData?.toMap(),
      'timeZoneId': ?timeZoneId,
      'type': ?type,
    };
  }

  factory GetScheduleResult.fromMap(Map<String, dynamic> map) {
    return GetScheduleResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      notes: (() { final guardedValue = map['notes']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      recurrencePattern: (() { final guardedValue = map['recurrencePattern']; if (guardedValue == null) return null; return RecurrencePatternResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      resourceOperationError: (() { final guardedValue = map['resourceOperationError']; if (guardedValue == null) return null; return ResourceOperationErrorResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      startAt: (() { final guardedValue = map['startAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      stopAt: (() { final guardedValue = map['stopAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      timeZoneId: (() { final guardedValue = map['timeZoneId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
