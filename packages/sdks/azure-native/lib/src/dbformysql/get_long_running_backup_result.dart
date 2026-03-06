// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getLongRunningBackup.
class GetLongRunningBackupResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Backup name
  final String? backupNameV2;
  final String? backupType;
  /// Backup completed time (ISO8601 format).
  final String? completedTime;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The name of the resource
  final String name;
  /// The provisioning state of backup resource.
  final String provisioningState;
  /// Backup source
  final String? source;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetLongRunningBackupResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [backupNameV2] Backup name
  /// [backupType] Optional.
  /// [completedTime] Backup completed time (ISO8601 format).
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [provisioningState] The provisioning state of backup resource.
  /// [source] Backup source
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  const GetLongRunningBackupResult({
    required this.azureApiVersion,
    this.backupNameV2,
    this.backupType,
    this.completedTime,
    required this.id,
    required this.name,
    required this.provisioningState,
    this.source,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'backupNameV2': ?backupNameV2,
      'backupType': ?backupType,
      'completedTime': ?completedTime,
      'id': id,
      'name': name,
      'provisioningState': provisioningState,
      'source': ?source,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetLongRunningBackupResult.fromMap(Map<String, dynamic> map) {
    return GetLongRunningBackupResult(
      azureApiVersion: map['azureApiVersion'] as String,
      backupNameV2: (() { final guardedValue = map['backupNameV2']; if (guardedValue == null) return null; return guardedValue as String; })(),
      backupType: (() { final guardedValue = map['backupType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      completedTime: (() { final guardedValue = map['completedTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
    );
  }
}

