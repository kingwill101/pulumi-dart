// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getScheduledTrigger.
class GetScheduledTriggerResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Time at which the trigger was created.
  final String createdAt;
  /// The resource id of the azure resource
  final String id;
  /// Kind of synchronization on trigger.
  /// Expected value is 'ScheduleBased'.
  final String kind;
  /// Name of the azure resource
  final String name;
  /// Gets the provisioning state
  final String provisioningState;
  /// Recurrence Interval
  final String recurrenceInterval;
  /// Synchronization mode
  final String? synchronizationMode;
  /// Synchronization time
  final String synchronizationTime;
  /// System Data of the Azure resource.
  final SystemDataResponse systemData;
  /// Gets the trigger state
  final String triggerStatus;
  /// Type of the azure resource
  final String type;
  /// Name of the user who created the trigger.
  final String userName;

  /// Creates a new [GetScheduledTriggerResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createdAt] Time at which the trigger was created.
  /// [id] The resource id of the azure resource
  /// [kind] Kind of synchronization on trigger.
  /// [name] Name of the azure resource
  /// [provisioningState] Gets the provisioning state
  /// [recurrenceInterval] Recurrence Interval
  /// [synchronizationMode] Synchronization mode
  /// [synchronizationTime] Synchronization time
  /// [systemData] System Data of the Azure resource.
  /// [triggerStatus] Gets the trigger state
  /// [type] Type of the azure resource
  /// [userName] Name of the user who created the trigger.
  const GetScheduledTriggerResult({
    required this.azureApiVersion,
    required this.createdAt,
    required this.id,
    required this.kind,
    required this.name,
    required this.provisioningState,
    required this.recurrenceInterval,
    this.synchronizationMode,
    required this.synchronizationTime,
    required this.systemData,
    required this.triggerStatus,
    required this.type,
    required this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'createdAt': createdAt,
      'id': id,
      'kind': kind,
      'name': name,
      'provisioningState': provisioningState,
      'recurrenceInterval': recurrenceInterval,
      'synchronizationMode': ?synchronizationMode,
      'synchronizationTime': synchronizationTime,
      'systemData': systemData.toMap(),
      'triggerStatus': triggerStatus,
      'type': type,
      'userName': userName,
    };
  }

  factory GetScheduledTriggerResult.fromMap(Map<String, dynamic> map) {
    return GetScheduledTriggerResult(
      azureApiVersion: map['azureApiVersion'] as String,
      createdAt: map['createdAt'] as String,
      id: map['id'] as String,
      kind: map['kind'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      recurrenceInterval: map['recurrenceInterval'] as String,
      synchronizationMode: (() { final guardedValue = map['synchronizationMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      synchronizationTime: map['synchronizationTime'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      triggerStatus: map['triggerStatus'] as String,
      type: map['type'] as String,
      userName: map['userName'] as String,
    );
  }
}
