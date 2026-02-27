// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../volume_backup_config/volume_backup_config.dart';
import '../volume_block_device/volume_block_device.dart';
import '../volume_cache_parameters/volume_cache_parameters.dart';
import '../volume_export_policy/volume_export_policy.dart';
import '../volume_hybrid_replication_parameters/volume_hybrid_replication_parameters.dart';
import '../volume_restore_parameters/volume_restore_parameters.dart';
import '../volume_snapshot_policy/volume_snapshot_policy.dart';
import '../volume_tiering_policy/volume_tiering_policy.dart';

/// The set of arguments for Volume.
class VolumeArgs {
  /// Backup configuration for the volume.
  /// Structure is documented below.
  final pulumi.Input<VolumeBackupConfig>? backupConfig;

  /// Block device represents the device(s) which are stored in the block volume.
  /// Currently, only one block device is permitted per Volume.
  /// Structure is documented below.
  final pulumi.Input<List<VolumeBlockDevice>>? blockDevices;

  /// Cache parameters for the volume.
  /// Structure is documented below.
  final pulumi.Input<VolumeCacheParameters>? cacheParameters;

  /// Capacity of the volume (in GiB).
  final pulumi.Input<String> capacityGib;

  /// Policy to determine if the volume should be deleted forcefully.
  /// Volumes may have nested snapshot resources. Deleting such a volume will fail.
  /// Setting this parameter to FORCE will delete volumes including nested snapshots.
  /// Possible values: DEFAULT, FORCE.
  final pulumi.Input<String>? deletionPolicy;

  /// An optional description of this resource.
  final pulumi.Input<String>? description;

  /// Export policy of the volume for NFSV3 and/or NFSV4.1 access.
  /// Structure is documented below.
  final pulumi.Input<VolumeExportPolicy>? exportPolicy;

  /// [Volume migration](https://docs.cloud.google.com/netapp/volumes/docs/migrate/ontap/overview) and
  /// [external replication](https://docs.cloud.google.com/netapp/volumes/docs/protect-data/replicate-ontap/overview)
  /// are two types of Hybrid Replication. This parameter block specifies the parameters for a hybrid replication.
  /// Structure is documented below.
  final pulumi.Input<VolumeHybridReplicationParameters>?
      hybridReplicationParameters;

  /// Flag indicating if the volume is a kerberos volume or not, export policy rules control kerberos security modes (krb5, krb5i, krb5p).
  final pulumi.Input<bool>? kerberosEnabled;

  /// Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Optional. Flag indicating if the volume will be a large capacity volume or a regular volume.
  final pulumi.Input<bool>? largeCapacity;

  /// Name of the pool location. Usually a region name, expect for some STANDARD service level pools which require a zone name.
  final pulumi.Input<String> location;

  /// Optional. Flag indicating if the volume will have an IP address per node for volumes supporting multiple IP endpoints.
  /// Only the volume with largeCapacity will be allowed to have multiple endpoints.
  final pulumi.Input<bool>? multipleEndpoints;

  /// The name of the volume. Needs to be unique per location.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The protocol of the volume. Allowed combinations are `['NFSV3']`, `['NFSV4']`, `['SMB']`, `['NFSV3', 'NFSV4']`, `['SMB', 'NFSV3']` and `['SMB', 'NFSV4']`.
  /// Each value may be one of: `NFSV3`, `NFSV4`, `SMB`, `ISCSI`.
  final pulumi.Input<List<String>> protocols;

  /// Used to create this volume from a snapshot (= cloning) or an backup.
  /// Structure is documented below.
  final pulumi.Input<VolumeRestoreParameters>? restoreParameters;

  /// List of actions that are restricted on this volume.
  /// Each value may be one of: `DELETE`.
  final pulumi.Input<List<String>>? restrictedActions;

  /// Security Style of the Volume. Use UNIX to use UNIX or NFSV4 ACLs for file permissions.
  /// Use NTFS to use NTFS ACLs for file permissions. Can only be set for volumes which use SMB together with NFS as protocol.
  /// Possible values are: `NTFS`, `UNIX`.
  final pulumi.Input<String>? securityStyle;

  /// Share name (SMB) or export path (NFS) of the volume. Needs to be unique per location.
  final pulumi.Input<String>? shareName;

  /// Settings for volumes with SMB access.
  /// Each value may be one of: `ENCRYPT_DATA`, `BROWSABLE`, `CHANGE_NOTIFY`, `NON_BROWSABLE`, `OPLOCKS`, `SHOW_SNAPSHOT`, `SHOW_PREVIOUS_VERSIONS`, `ACCESS_BASED_ENUMERATION`, `CONTINUOUSLY_AVAILABLE`.
  final pulumi.Input<List<String>>? smbSettings;

  /// If enabled, a NFS volume will contain a read-only .snapshot directory which provides access to each of the volume's snapshots. Will enable "Previous Versions" support for SMB.
  final pulumi.Input<bool>? snapshotDirectory;

  /// Snapshot policy defines the schedule for automatic snapshot creation.
  /// To disable automatic snapshot creation you have to remove the whole snapshot_policy block.
  /// Structure is documented below.
  final pulumi.Input<VolumeSnapshotPolicy>? snapshotPolicy;

  /// Name of the storage pool to create the volume in. Pool needs enough spare capacity to accommodate the volume.
  final pulumi.Input<String> storagePool;

  /// Optional. Custom Performance Total Throughput of the pool (in MiB/s).
  final pulumi.Input<double>? throughputMibps;

  /// Tiering policy for the volume.
  /// Structure is documented below.
  final pulumi.Input<VolumeTieringPolicy>? tieringPolicy;

  /// Unix permission the mount point will be created with. Default is 0770. Applicable for UNIX security style volumes only.
  final pulumi.Input<String>? unixPermissions;

  VolumeArgs({
    this.backupConfig,
    this.blockDevices,
    this.cacheParameters,
    required this.capacityGib,
    this.deletionPolicy,
    this.description,
    this.exportPolicy,
    this.hybridReplicationParameters,
    this.kerberosEnabled,
    this.labels,
    this.largeCapacity,
    required this.location,
    this.multipleEndpoints,
    this.name,
    this.project,
    required this.protocols,
    this.restoreParameters,
    this.restrictedActions,
    this.securityStyle,
    this.shareName,
    this.smbSettings,
    this.snapshotDirectory,
    this.snapshotPolicy,
    required this.storagePool,
    this.throughputMibps,
    this.tieringPolicy,
    this.unixPermissions,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final backupConfigValue = backupConfig;
    if (backupConfigValue != null) {
      map['backupConfig'] = pulumi.Input.mapOptionalInputValue<
          VolumeBackupConfig,
          Map<String, dynamic>>(backupConfigValue, (value) => value.toMap());
    }
    final blockDevicesValue = blockDevices;
    if (blockDevicesValue != null) {
      map['blockDevices'] = pulumi.Input.mapOptionalInputValue<
              List<VolumeBlockDevice>, List<Map<String, dynamic>>>(
          blockDevicesValue,
          (value) =>
              pulumi.Input.encodeList<VolumeBlockDevice, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final cacheParametersValue = cacheParameters;
    if (cacheParametersValue != null) {
      map['cacheParameters'] = pulumi.Input.mapOptionalInputValue<
          VolumeCacheParameters,
          Map<String, dynamic>>(cacheParametersValue, (value) => value.toMap());
    }
    map['capacityGib'] = capacityGib;
    final deletionPolicyValue = deletionPolicy;
    if (deletionPolicyValue != null) {
      map['deletionPolicy'] = deletionPolicyValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final exportPolicyValue = exportPolicy;
    if (exportPolicyValue != null) {
      map['exportPolicy'] = pulumi.Input.mapOptionalInputValue<
          VolumeExportPolicy,
          Map<String, dynamic>>(exportPolicyValue, (value) => value.toMap());
    }
    final hybridReplicationParametersValue = hybridReplicationParameters;
    if (hybridReplicationParametersValue != null) {
      map['hybridReplicationParameters'] = pulumi.Input.mapOptionalInputValue<
              VolumeHybridReplicationParameters, Map<String, dynamic>>(
          hybridReplicationParametersValue, (value) => value.toMap());
    }
    final kerberosEnabledValue = kerberosEnabled;
    if (kerberosEnabledValue != null) {
      map['kerberosEnabled'] = kerberosEnabledValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final largeCapacityValue = largeCapacity;
    if (largeCapacityValue != null) {
      map['largeCapacity'] = largeCapacityValue;
    }
    map['location'] = location;
    final multipleEndpointsValue = multipleEndpoints;
    if (multipleEndpointsValue != null) {
      map['multipleEndpoints'] = multipleEndpointsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['protocols'] = protocols;
    final restoreParametersValue = restoreParameters;
    if (restoreParametersValue != null) {
      map['restoreParameters'] = pulumi.Input.mapOptionalInputValue<
              VolumeRestoreParameters, Map<String, dynamic>>(
          restoreParametersValue, (value) => value.toMap());
    }
    final restrictedActionsValue = restrictedActions;
    if (restrictedActionsValue != null) {
      map['restrictedActions'] = restrictedActionsValue;
    }
    final securityStyleValue = securityStyle;
    if (securityStyleValue != null) {
      map['securityStyle'] = securityStyleValue;
    }
    final shareNameValue = shareName;
    if (shareNameValue != null) {
      map['shareName'] = shareNameValue;
    }
    final smbSettingsValue = smbSettings;
    if (smbSettingsValue != null) {
      map['smbSettings'] = smbSettingsValue;
    }
    final snapshotDirectoryValue = snapshotDirectory;
    if (snapshotDirectoryValue != null) {
      map['snapshotDirectory'] = snapshotDirectoryValue;
    }
    final snapshotPolicyValue = snapshotPolicy;
    if (snapshotPolicyValue != null) {
      map['snapshotPolicy'] = pulumi.Input.mapOptionalInputValue<
          VolumeSnapshotPolicy,
          Map<String, dynamic>>(snapshotPolicyValue, (value) => value.toMap());
    }
    map['storagePool'] = storagePool;
    final throughputMibpsValue = throughputMibps;
    if (throughputMibpsValue != null) {
      map['throughputMibps'] = throughputMibpsValue;
    }
    final tieringPolicyValue = tieringPolicy;
    if (tieringPolicyValue != null) {
      map['tieringPolicy'] = pulumi.Input.mapOptionalInputValue<
          VolumeTieringPolicy,
          Map<String, dynamic>>(tieringPolicyValue, (value) => value.toMap());
    }
    final unixPermissionsValue = unixPermissions;
    if (unixPermissionsValue != null) {
      map['unixPermissions'] = unixPermissionsValue;
    }
    return map;
  }

  factory VolumeArgs.fromMap(Map<String, dynamic> map) {
    return VolumeArgs(
      backupConfig:
          pulumi.Input.asOptionalInput<VolumeBackupConfig>(map['backupConfig']),
      blockDevices: pulumi.Input.asOptionalInput<List<VolumeBlockDevice>>(
          map['blockDevices']),
      cacheParameters: pulumi.Input.asOptionalInput<VolumeCacheParameters>(
          map['cacheParameters']),
      capacityGib: pulumi.Input.asInput<String>(map['capacityGib']),
      deletionPolicy:
          pulumi.Input.asOptionalInput<String>(map['deletionPolicy']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      exportPolicy:
          pulumi.Input.asOptionalInput<VolumeExportPolicy>(map['exportPolicy']),
      hybridReplicationParameters:
          pulumi.Input.asOptionalInput<VolumeHybridReplicationParameters>(
              map['hybridReplicationParameters']),
      kerberosEnabled:
          pulumi.Input.asOptionalInput<bool>(map['kerberosEnabled']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      largeCapacity: pulumi.Input.asOptionalInput<bool>(map['largeCapacity']),
      location: pulumi.Input.asInput<String>(map['location']),
      multipleEndpoints:
          pulumi.Input.asOptionalInput<bool>(map['multipleEndpoints']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      protocols: pulumi.Input.asInput<List<String>>(map['protocols']),
      restoreParameters: pulumi.Input.asOptionalInput<VolumeRestoreParameters>(
          map['restoreParameters']),
      restrictedActions:
          pulumi.Input.asOptionalInput<List<String>>(map['restrictedActions']),
      securityStyle: pulumi.Input.asOptionalInput<String>(map['securityStyle']),
      shareName: pulumi.Input.asOptionalInput<String>(map['shareName']),
      smbSettings:
          pulumi.Input.asOptionalInput<List<String>>(map['smbSettings']),
      snapshotDirectory:
          pulumi.Input.asOptionalInput<bool>(map['snapshotDirectory']),
      snapshotPolicy: pulumi.Input.asOptionalInput<VolumeSnapshotPolicy>(
          map['snapshotPolicy']),
      storagePool: pulumi.Input.asInput<String>(map['storagePool']),
      throughputMibps:
          pulumi.Input.asOptionalInput<double>(map['throughputMibps']),
      tieringPolicy: pulumi.Input.asOptionalInput<VolumeTieringPolicy>(
          map['tieringPolicy']),
      unixPermissions:
          pulumi.Input.asOptionalInput<String>(map['unixPermissions']),
    );
  }
}
