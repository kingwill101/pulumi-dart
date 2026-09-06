// ignore_for_file: unused_element, unnecessary_cast

import 'system_data_response.dart';

/// Result data returned by getCapacityPoolBackup.
class GetCapacityPoolBackupResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// UUID v4 used to identify the Backup
  final String? backupId;
  /// Type of backup Manual or Scheduled
  final String? backupType;
  /// The creation date of the backup
  final String? creationDate;
  /// Failure reason
  final String? failureReason;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String? id;
  /// Label for backup
  final String? label;
  /// Resource location
  final String? location;
  /// The name of the resource
  final String? name;
  /// Azure lifecycle management
  final String? provisioningState;
  /// Size of backup
  final double? size;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// Manual backup an already existing snapshot. This will always be false for scheduled backups and true/false for manual backups
  final bool? useExistingSnapshot;
  /// Volume name
  final String? volumeName;

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
  GetCapacityPoolBackupResult({
    this.azureApiVersion,
    this.backupId,
    this.backupType,
    this.creationDate,
    this.failureReason,
    this.id,
    this.label,
    this.location,
    this.name,
    this.provisioningState,
    this.size,
    this.systemData,
    this.type,
    bool? useExistingSnapshot,
    this.volumeName,
  }) : useExistingSnapshot = useExistingSnapshot ?? false;

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'backupId': ?backupId,
      'backupType': ?backupType,
      'creationDate': ?creationDate,
      'failureReason': ?failureReason,
      'id': ?id,
      'label': ?label,
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'size': ?size,
      'systemData': ?systemData?.toMap(),
      'type': ?type,
      'useExistingSnapshot': ?useExistingSnapshot,
      'volumeName': ?volumeName,
    };
  }

  factory GetCapacityPoolBackupResult.fromMap(Map<String, dynamic> map) {
    return GetCapacityPoolBackupResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      backupId: (() { final guardedValue = map['backupId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      backupType: (() { final guardedValue = map['backupType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      creationDate: (() { final guardedValue = map['creationDate']; if (guardedValue == null) return null; return guardedValue as String; })(),
      failureReason: (() { final guardedValue = map['failureReason']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      label: (() { final guardedValue = map['label']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      size: (() { final guardedValue = map['size']; if (guardedValue == null) return null; return (guardedValue as num).toDouble(); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      useExistingSnapshot: (() { final guardedValue = map['useExistingSnapshot']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      volumeName: (() { final guardedValue = map['volumeName']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
