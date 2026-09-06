// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getScheduledTrigger.
class GetScheduledTriggerResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Time at which the trigger was created.
  final String? createdAt;
  /// The resource id of the azure resource
  final String? id;
  /// Kind of synchronization on trigger.
  /// Expected value is 'ScheduleBased'.
  final String? kind;
  /// Name of the azure resource
  final String? name;
  /// Gets the provisioning state
  final String? provisioningState;
  /// Recurrence Interval
  final String? recurrenceInterval;
  /// Synchronization mode
  final String? synchronizationMode;
  /// Synchronization time
  final String? synchronizationTime;
  /// System Data of the Azure resource.
  final SystemDataResponse? systemData;
  /// Gets the trigger state
  final String? triggerStatus;
  /// Type of the azure resource
  final String? type;
  /// Name of the user who created the trigger.
  final String? userName;

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
    this.azureApiVersion,
    this.createdAt,
    this.id,
    this.kind,
    this.name,
    this.provisioningState,
    this.recurrenceInterval,
    this.synchronizationMode,
    this.synchronizationTime,
    this.systemData,
    this.triggerStatus,
    this.type,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'createdAt': ?createdAt,
      'id': ?id,
      'kind': ?kind,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'recurrenceInterval': ?recurrenceInterval,
      'synchronizationMode': ?synchronizationMode,
      'synchronizationTime': ?synchronizationTime,
      'systemData': ?systemData?.toMap(),
      'triggerStatus': ?triggerStatus,
      'type': ?type,
      'userName': ?userName,
    };
  }

  factory GetScheduledTriggerResult.fromMap(Map<String, dynamic> map) {
    return GetScheduledTriggerResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      recurrenceInterval: (() { final guardedValue = map['recurrenceInterval']; if (guardedValue == null) return null; return guardedValue as String; })(),
      synchronizationMode: (() { final guardedValue = map['synchronizationMode']; if (guardedValue == null) return null; return guardedValue as String; })(),
      synchronizationTime: (() { final guardedValue = map['synchronizationTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      triggerStatus: (() { final guardedValue = map['triggerStatus']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
