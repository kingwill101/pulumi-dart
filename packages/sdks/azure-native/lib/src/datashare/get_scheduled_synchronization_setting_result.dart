// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getScheduledSynchronizationSetting.
class GetScheduledSynchronizationSettingResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Time at which the synchronization setting was created.
  final String? createdAt;
  /// The resource id of the azure resource
  final String? id;
  /// Kind of synchronization setting.
  /// Expected value is 'ScheduleBased'.
  final String? kind;
  /// Name of the azure resource
  final String? name;
  /// Gets or sets the provisioning state
  final String? provisioningState;
  /// Recurrence Interval
  final String? recurrenceInterval;
  /// Synchronization time
  final String? synchronizationTime;
  /// System Data of the Azure resource.
  final SystemDataResponse? systemData;
  /// Type of the azure resource
  final String? type;
  /// Name of the user who created the synchronization setting.
  final String? userName;

  /// Creates a new [GetScheduledSynchronizationSettingResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [createdAt] Time at which the synchronization setting was created.
  /// [id] The resource id of the azure resource
  /// [kind] Kind of synchronization setting.
  /// [name] Name of the azure resource
  /// [provisioningState] Gets or sets the provisioning state
  /// [recurrenceInterval] Recurrence Interval
  /// [synchronizationTime] Synchronization time
  /// [systemData] System Data of the Azure resource.
  /// [type] Type of the azure resource
  /// [userName] Name of the user who created the synchronization setting.
  const GetScheduledSynchronizationSettingResult({
    this.azureApiVersion,
    this.createdAt,
    this.id,
    this.kind,
    this.name,
    this.provisioningState,
    this.recurrenceInterval,
    this.synchronizationTime,
    this.systemData,
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
      'synchronizationTime': ?synchronizationTime,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
      'userName': ?userName,
    };
  }

  factory GetScheduledSynchronizationSettingResult.fromMap(Map<String, dynamic> map) {
    return GetScheduledSynchronizationSettingResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      createdAt: (() { final guardedValue = map['createdAt']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      kind: (() { final guardedValue = map['kind']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      recurrenceInterval: (() { final guardedValue = map['recurrenceInterval']; if (guardedValue == null) return null; return guardedValue as String; })(),
      synchronizationTime: (() { final guardedValue = map['synchronizationTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
