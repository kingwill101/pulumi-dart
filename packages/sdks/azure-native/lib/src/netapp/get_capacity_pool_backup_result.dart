// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getCapacityPoolBackup.
class GetCapacityPoolBackupResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// UUID v4 used to identify the Backup
  final String backupId;
  /// Type of backup Manual or Scheduled
  final String backupType;
  /// The creation date of the backup
  final String creationDate;
  /// Failure reason
  final String failureReason;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// Label for backup
  final String? label;
  /// Resource location
  final String location;
  /// The name of the resource
  final String name;
  /// Azure lifecycle management
  final String provisioningState;
  /// Size of backup
  final double size;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Manual backup an already existing snapshot. This will always be false for scheduled backups and true/false for manual backups
  final bool? useExistingSnapshot;
  /// Volume name
  final String volumeName;

  /// Creates a new [GetCapacityPoolBackupResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [backupId] UUID v4 used to identify the Backup
  /// [backupType] Type of backup Manual or Scheduled
  /// [creationDate] The creation date of the backup
  /// [failureReason] Failure reason
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [label] Label for backup
  /// [location] Resource location
  /// [name] The name of the resource
  /// [provisioningState] Azure lifecycle management
  /// [size] Size of backup
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [useExistingSnapshot] Manual backup an already existing snapshot. This will always be false for scheduled backups and true/false for manual backups
  /// [volumeName] Volume name
  const GetCapacityPoolBackupResult({
    required this.azureApiVersion,
    required this.backupId,
    required this.backupType,
    required this.creationDate,
    required this.failureReason,
    required this.id,
    this.label,
    required this.location,
    required this.name,
    required this.provisioningState,
    required this.size,
    required this.systemData,
    required this.type,
    this.useExistingSnapshot,
    required this.volumeName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'backupId': backupId,
      'backupType': backupType,
      'creationDate': creationDate,
      'failureReason': failureReason,
      'id': id,
      'label': ?label,
      'location': location,
      'name': name,
      'provisioningState': provisioningState,
      'size': size,
      'systemData': systemData.toMap(),
      'type': type,
      'useExistingSnapshot': ?useExistingSnapshot,
      'volumeName': volumeName,
    };
  }

  factory GetCapacityPoolBackupResult.fromMap(Map<String, dynamic> map) {
    return GetCapacityPoolBackupResult(
      azureApiVersion: map['azureApiVersion'] as String,
      backupId: map['backupId'] as String,
      backupType: map['backupType'] as String,
      creationDate: map['creationDate'] as String,
      failureReason: map['failureReason'] as String,
      id: map['id'] as String,
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: map['location'] as String,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      size: map['size'] as double,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      useExistingSnapshot: (() { final guardedValue = map['useExistingSnapshot']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      volumeName: map['volumeName'] as String,
    );
  }
}
