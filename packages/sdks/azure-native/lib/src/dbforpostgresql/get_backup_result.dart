// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getBackup.
class GetBackupResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;

  /// Type of backup.
  final String? backupType;

  /// Time(ISO8601 format) at which the backup was completed.
  final String? completedTime;

  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;

  /// The name of the resource
  final String name;

  /// Source of the backup.
  final String? source;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;

  /// Creates a new [GetBackupResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [backupType] Type of backup.
  /// [completedTime] Time(ISO8601 format) at which the backup was completed.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [name] The name of the resource
  /// [source] Source of the backup.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  GetBackupResult({
    required this.azureApiVersion,
    this.backupType,
    this.completedTime,
    required this.id,
    required this.name,
    this.source,
    required this.systemData,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'backupType': ?backupType,
      'completedTime': ?completedTime,
      'id': id,
      'name': name,
      'source': ?source,
      'systemData': systemData.toMap(),
      'type': type,
    };
  }

  factory GetBackupResult.fromMap(Map<String, dynamic> map) {
    return GetBackupResult(
      azureApiVersion: map['azureApiVersion'] as String,
      backupType: (() {
        final guardedValue = map['backupType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      completedTime: (() {
        final guardedValue = map['completedTime'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      id: map['id'] as String,
      name: map['name'] as String,
      source: (() {
        final guardedValue = map['source'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      systemData: SystemDataResponse.fromMap(
        (map['systemData']! as Map).cast<String, dynamic>(),
      ),
      type: map['type'] as String,
    );
  }
}
