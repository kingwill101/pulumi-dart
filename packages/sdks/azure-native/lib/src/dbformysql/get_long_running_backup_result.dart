// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getLongRunningBackup.
class GetLongRunningBackupResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Backup name
  final String? backupNameV2;
  final String? backupType;
  /// Backup completed time (ISO8601 format).
  final String? completedTime;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The name of the resource
  final String? name;
  /// The provisioning state of backup resource.
  final String? provisioningState;
  /// Backup source
  final String? source;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;

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
    this.azureApiVersion,
    this.backupNameV2,
    this.backupType,
    this.completedTime,
    this.id,
    this.name,
    this.provisioningState,
    this.source,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'backupNameV2': ?backupNameV2,
      'backupType': ?backupType,
      'completedTime': ?completedTime,
      'id': ?id,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'source': ?source,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetLongRunningBackupResult.fromMap(Map<String, dynamic> map) {
    return GetLongRunningBackupResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      backupNameV2: (() { final guardedValue = map['backupNameV2']; if (guardedValue == null) return null; return guardedValue as String; })(),
      backupType: (() { final guardedValue = map['backupType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      completedTime: (() { final guardedValue = map['completedTime']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      source: (() { final guardedValue = map['source']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
