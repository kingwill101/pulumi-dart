// ignore_for_file: unused_element, unnecessary_cast

import 'recurrence_pattern_response.dart';
import 'resource_operation_error_response.dart';
import 'system_data_response.dart';

/// Result data returned by getSchedule.
class GetScheduleResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The name of the resource
  final String name;
  /// Notes for this schedule.
  final String? notes;
  /// Current provisioning state of the schedule.
  final String provisioningState;
  /// The recurrence pattern of the scheduled actions.
  final RecurrencePatternResponse? recurrencePattern;
  /// Error details of last operation done on schedule.
  final ResourceOperationErrorResponse resourceOperationError;
  /// When lab user virtual machines will be started. Timestamp offsets will be ignored and timeZoneId is used instead.
  final String? startAt;
  /// When lab user virtual machines will be stopped. Timestamp offsets will be ignored and timeZoneId is used instead.
  final String stopAt;
  /// Metadata pertaining to creation and last modification of the schedule.
  final SystemDataResponse systemData;
  /// The IANA timezone id for the schedule.
  final String timeZoneId;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

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
  GetScheduleResult({
    required this.azureApiVersion,
    required this.id,
    required this.name,
    this.notes,
    required this.provisioningState,
    this.recurrencePattern,
    required this.resourceOperationError,
    this.startAt,
    required this.stopAt,
    required this.systemData,
    required this.timeZoneId,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'id': id,
      'name': name,
      'notes': ?notes,
      'provisioningState': provisioningState,
      'recurrencePattern': ?recurrencePattern == null ? null : recurrencePattern!.toMap(),
      'resourceOperationError': resourceOperationError.toMap(),
      'startAt': ?startAt,
      'stopAt': stopAt,
      'systemData': systemData.toMap(),
      'timeZoneId': timeZoneId,
      'type': type,
    };
  }

  factory GetScheduleResult.fromMap(Map<String, dynamic> map) {
    return GetScheduleResult(
      azureApiVersion: map['azureApiVersion'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      notes: map['notes'] == null ? null : map['notes'] as String,
      provisioningState: map['provisioningState'] as String,
      recurrencePattern: map['recurrencePattern'] == null ? null : RecurrencePatternResponse.fromMap((map['recurrencePattern'] as Map).cast<String, dynamic>()),
      resourceOperationError: ResourceOperationErrorResponse.fromMap((map['resourceOperationError'] as Map).cast<String, dynamic>()),
      startAt: map['startAt'] == null ? null : map['startAt'] as String,
      stopAt: map['stopAt'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      timeZoneId: map['timeZoneId'] as String,
      type: map['type'] as String,
    );
  }
}

