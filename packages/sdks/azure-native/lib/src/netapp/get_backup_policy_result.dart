// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'volume_backups_response.dart';

/// Result data returned by getBackupPolicy.
class GetBackupPolicyResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Backup Policy GUID ID
  final String? backupPolicyId;
  /// Daily backups count to keep
  final int? dailyBackupsToKeep;
  /// The property to decide policy is enabled or not
  final bool? enabled;
  /// A unique read-only string that changes whenever the resource is updated.
  final String? etag;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String? id;
  /// The geo-location where the resource lives
  final String? location;
  /// Monthly backups count to keep
  final int? monthlyBackupsToKeep;
  /// The name of the resource
  final String? name;
  /// Azure lifecycle management
  final String? provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse? systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String? type;
  /// A list of volumes assigned to this policy
  final List<VolumeBackupsResponse>? volumeBackups;
  /// Volumes using current backup policy
  final int? volumesAssigned;
  /// Weekly backups count to keep
  final int? weeklyBackupsToKeep;

  /// Creates a new [GetBackupPolicyResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [backupPolicyId] Backup Policy GUID ID
  /// [dailyBackupsToKeep] Daily backups count to keep
  /// [enabled] The property to decide policy is enabled or not
  /// [etag] A unique read-only string that changes whenever the resource is updated.
  /// [id] Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  /// [location] The geo-location where the resource lives
  /// [monthlyBackupsToKeep] Monthly backups count to keep
  /// [name] The name of the resource
  /// [provisioningState] Azure lifecycle management
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [volumeBackups] A list of volumes assigned to this policy
  /// [volumesAssigned] Volumes using current backup policy
  /// [weeklyBackupsToKeep] Weekly backups count to keep
  const GetBackupPolicyResult({
    this.azureApiVersion,
    this.backupPolicyId,
    this.dailyBackupsToKeep,
    this.enabled,
    this.etag,
    this.id,
    this.location,
    this.monthlyBackupsToKeep,
    this.name,
    this.provisioningState,
    this.systemData,
    this.tags,
    this.type,
    this.volumeBackups,
    this.volumesAssigned,
    this.weeklyBackupsToKeep,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'backupPolicyId': ?backupPolicyId,
      'dailyBackupsToKeep': ?dailyBackupsToKeep,
      'enabled': ?enabled,
      'etag': ?etag,
      'id': ?id,
      'location': ?location,
      'monthlyBackupsToKeep': ?monthlyBackupsToKeep,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'systemData': ?systemData?.toMap(),
      'tags': ?tags,
      'type': ?type,
      'volumeBackups': ?(() { final guardedValue = volumeBackups; if (guardedValue == null) return null; return pulumi.Input.encodeList<VolumeBackupsResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'volumesAssigned': ?volumesAssigned,
      'weeklyBackupsToKeep': ?weeklyBackupsToKeep,
    };
  }

  factory GetBackupPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetBackupPolicyResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      backupPolicyId: (() { final guardedValue = map['backupPolicyId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dailyBackupsToKeep: (() { final guardedValue = map['dailyBackupsToKeep']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      etag: (() { final guardedValue = map['etag']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      monthlyBackupsToKeep: (() { final guardedValue = map['monthlyBackupsToKeep']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
      volumeBackups: (() { final guardedValue = map['volumeBackups']; if (guardedValue == null) return null; return pulumi.Input.decodeList<VolumeBackupsResponse>(guardedValue, (value) => VolumeBackupsResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      volumesAssigned: (() { final guardedValue = map['volumesAssigned']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
      weeklyBackupsToKeep: (() { final guardedValue = map['weeklyBackupsToKeep']; if (guardedValue == null) return null; return ((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue); })(),
    );
  }
}
