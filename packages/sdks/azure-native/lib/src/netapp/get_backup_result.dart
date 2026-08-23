// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getBackup.
class GetBackupResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// UUID v4 used to identify the Backup
  final String backupId;
  /// ResourceId used to identify the backup policy
  final String backupPolicyResourceId;
  /// Type of backup Manual or Scheduled
  final String backupType;
  /// The creation date of the backup
  final String creationDate;
  /// Failure reason
  final String failureReason;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// Label for backup
  final String? label;
  /// The name of the resource
  final String name;
  /// Azure lifecycle management
  final String provisioningState;
  /// Size of backup in bytes
  final double size;
  /// The name of the snapshot
  final String? snapshotName;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// Manual backup an already existing snapshot. This will always be false for scheduled backups and true/false for manual backups
  final bool? useExistingSnapshot;
  /// ResourceId used to identify the Volume
  final String volumeResourceId;

  /// Creates a new [GetBackupResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [backupId] UUID v4 used to identify the Backup
  /// [backupPolicyResourceId] ResourceId used to identify the backup policy
  /// [backupType] Type of backup Manual or Scheduled
  /// [creationDate] The creation date of the backup
  /// [failureReason] Failure reason
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [label] Label for backup
  /// [name] The name of the resource
  /// [provisioningState] Azure lifecycle management
  /// [size] Size of backup in bytes
  /// [snapshotName] The name of the snapshot
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [useExistingSnapshot] Manual backup an already existing snapshot. This will always be false for scheduled backups and true/false for manual backups
  /// [volumeResourceId] ResourceId used to identify the Volume
  const GetBackupResult({
    required this.azureApiVersion,
    required this.backupId,
    required this.backupPolicyResourceId,
    required this.backupType,
    required this.creationDate,
    required this.failureReason,
    required this.id,
    this.label,
    required this.name,
    required this.provisioningState,
    required this.size,
    this.snapshotName,
    required this.systemData,
    required this.type,
    this.useExistingSnapshot,
    required this.volumeResourceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'backupId': backupId,
      'backupPolicyResourceId': backupPolicyResourceId,
      'backupType': backupType,
      'creationDate': creationDate,
      'failureReason': failureReason,
      'id': id,
      'label': ?label,
      'name': name,
      'provisioningState': provisioningState,
      'size': size,
      'snapshotName': ?snapshotName,
      'systemData': systemData.toMap(),
      'type': type,
      'useExistingSnapshot': ?useExistingSnapshot,
      'volumeResourceId': volumeResourceId,
    };
  }

  factory GetBackupResult.fromMap(Map<String, dynamic> map) {
    return GetBackupResult(
      azureApiVersion: map['azureApiVersion'] as String,
      backupId: map['backupId'] as String,
      backupPolicyResourceId: map['backupPolicyResourceId'] as String,
      backupType: map['backupType'] as String,
      creationDate: map['creationDate'] as String,
      failureReason: map['failureReason'] as String,
      id: map['id'] as String,
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      size: map['size'] as double,
      snapshotName: (() { final guardedValue = map['snapshotName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      type: map['type'] as String,
      useExistingSnapshot: (() { final guardedValue = map['useExistingSnapshot']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      volumeResourceId: map['volumeResourceId'] as String,
    );
  }
}
