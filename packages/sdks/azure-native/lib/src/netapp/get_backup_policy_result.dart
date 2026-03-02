// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'volume_backups_response.dart';

/// Result data returned by getBackupPolicy.
class GetBackupPolicyResult {
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// Backup Policy GUID ID
  final String backupPolicyId;
  /// Daily backups count to keep
  final int? dailyBackupsToKeep;
  /// The property to decide policy is enabled or not
  final bool? enabled;
  /// A unique read-only string that changes whenever the resource is updated.
  final String etag;
  /// Fully qualified resource ID for the resource. E.g. "/subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}"
  final String id;
  /// The geo-location where the resource lives
  final String location;
  /// Monthly backups count to keep
  final int? monthlyBackupsToKeep;
  /// The name of the resource
  final String name;
  /// Azure lifecycle management
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// A list of volumes assigned to this policy
  final List<VolumeBackupsResponse> volumeBackups;
  /// Volumes using current backup policy
  final int volumesAssigned;
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
  GetBackupPolicyResult({
    required this.azureApiVersion,
    required this.backupPolicyId,
    this.dailyBackupsToKeep,
    this.enabled,
    required this.etag,
    required this.id,
    required this.location,
    this.monthlyBackupsToKeep,
    required this.name,
    required this.provisioningState,
    required this.systemData,
    this.tags,
    required this.type,
    required this.volumeBackups,
    required this.volumesAssigned,
    this.weeklyBackupsToKeep,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': azureApiVersion,
      'backupPolicyId': backupPolicyId,
      'dailyBackupsToKeep': ?dailyBackupsToKeep,
      'enabled': ?enabled,
      'etag': etag,
      'id': id,
      'location': location,
      'monthlyBackupsToKeep': ?monthlyBackupsToKeep,
      'name': name,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'volumeBackups': pulumi.Input.encodeList<VolumeBackupsResponse, Map<String, dynamic>>(volumeBackups, (value) => value.toMap()),
      'volumesAssigned': volumesAssigned,
      'weeklyBackupsToKeep': ?weeklyBackupsToKeep,
    };
  }

  factory GetBackupPolicyResult.fromMap(Map<String, dynamic> map) {
    return GetBackupPolicyResult(
      azureApiVersion: map['azureApiVersion'] as String,
      backupPolicyId: map['backupPolicyId'] as String,
      dailyBackupsToKeep: map['dailyBackupsToKeep'] == null ? null : map['dailyBackupsToKeep']! as int,
      enabled: map['enabled'] == null ? null : map['enabled']! as bool,
      etag: map['etag'] as String,
      id: map['id'] as String,
      location: map['location'] as String,
      monthlyBackupsToKeep: map['monthlyBackupsToKeep'] == null ? null : map['monthlyBackupsToKeep']! as int,
      name: map['name'] as String,
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags']! as Map).cast<String, String>(),
      type: map['type'] as String,
      volumeBackups: pulumi.Input.decodeList<VolumeBackupsResponse>(map['volumeBackups'], (value) => VolumeBackupsResponse.fromMap((value as Map).cast<String, dynamic>())),
      volumesAssigned: map['volumesAssigned'] as int,
      weeklyBackupsToKeep: map['weeklyBackupsToKeep'] == null ? null : map['weeklyBackupsToKeep']! as int,
    );
  }
}

