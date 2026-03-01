// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getScheduledSynchronizationSetting.
class GetScheduledSynchronizationSettingResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Time at which the synchronization setting was created.
  final String createdAt;
  /// The resource id of the azure resource
  final String id;
  /// Kind of synchronization setting.
  /// Expected value is 'ScheduleBased'.
  final String kind;
  /// Name of the azure resource
  final String name;
  /// Gets or sets the provisioning state
  final String provisioningState;
  /// Recurrence Interval
  final String recurrenceInterval;
  /// Synchronization time
  final String synchronizationTime;
  /// System Data of the Azure resource.
  final SystemDataResponse systemData;
  /// Type of the azure resource
  final String type;
  /// Name of the user who created the synchronization setting.
  final String userName;

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
  GetScheduledSynchronizationSettingResult({
    required this.azureApiVersion,
    required this.createdAt,
    required this.id,
    required this.kind,
    required this.name,
    required this.provisioningState,
    required this.recurrenceInterval,
    required this.synchronizationTime,
    required this.systemData,
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
      'synchronizationTime': synchronizationTime,
      'systemData': systemData.toMap(),
      'type': type,
      'userName': userName,
    };
  }

  factory GetScheduledSynchronizationSettingResult.fromMap(Map<String, dynamic> map) {
    return GetScheduledSynchronizationSettingResult(
      azureApiVersion: map['azureApiVersion'] as String,
      createdAt: map['createdAt'] as String,
      id: map['id'] as String,
      kind: map['kind'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      recurrenceInterval: map['recurrenceInterval'] as String,
      synchronizationTime: map['synchronizationTime'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      userName: map['userName'] as String,
    );
  }
}

