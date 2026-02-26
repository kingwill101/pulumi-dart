// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
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
  final Input<VolumeBackupConfig>? backupConfig;

  /// Block device represents the device(s) which are stored in the block volume.
  /// Currently, only one block device is permitted per Volume.
  /// Structure is documented below.
  final Input<List<VolumeBlockDevice>>? blockDevices;

  /// Cache parameters for the volume.
  /// Structure is documented below.
  final Input<VolumeCacheParameters>? cacheParameters;

  /// Capacity of the volume (in GiB).
  final Input<String> capacityGib;

  /// Policy to determine if the volume should be deleted forcefully.
  /// Volumes may have nested snapshot resources. Deleting such a volume will fail.
  /// Setting this parameter to FORCE will delete volumes including nested snapshots.
  /// Possible values: DEFAULT, FORCE.
  final Input<String>? deletionPolicy;

  /// An optional description of this resource.
  final Input<String>? description;

  /// Export policy of the volume for NFSV3 and/or NFSV4.1 access.
  /// Structure is documented below.
  final Input<VolumeExportPolicy>? exportPolicy;

  /// [Volume migration](https://docs.cloud.google.com/netapp/volumes/docs/migrate/ontap/overview) and
  /// [external replication](https://docs.cloud.google.com/netapp/volumes/docs/protect-data/replicate-ontap/overview)
  /// are two types of Hybrid Replication. This parameter block specifies the parameters for a hybrid replication.
  /// Structure is documented below.
  final Input<VolumeHybridReplicationParameters>? hybridReplicationParameters;

  /// Flag indicating if the volume is a kerberos volume or not, export policy rules control kerberos security modes (krb5, krb5i, krb5p).
  final Input<bool>? kerberosEnabled;

  /// Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// Optional. Flag indicating if the volume will be a large capacity volume or a regular volume.
  final Input<bool>? largeCapacity;

  /// Name of the pool location. Usually a region name, expect for some STANDARD service level pools which require a zone name.
  final Input<String> location;

  /// Optional. Flag indicating if the volume will have an IP address per node for volumes supporting multiple IP endpoints.
  /// Only the volume with largeCapacity will be allowed to have multiple endpoints.
  final Input<bool>? multipleEndpoints;

  /// The name of the volume. Needs to be unique per location.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The protocol of the volume. Allowed combinations are `['NFSV3']`, `['NFSV4']`, `['SMB']`, `['NFSV3', 'NFSV4']`, `['SMB', 'NFSV3']` and `['SMB', 'NFSV4']`.
  /// Each value may be one of: `NFSV3`, `NFSV4`, `SMB`, `ISCSI`.
  final Input<List<String>> protocols;

  /// Used to create this volume from a snapshot (= cloning) or an backup.
  /// Structure is documented below.
  final Input<VolumeRestoreParameters>? restoreParameters;

  /// List of actions that are restricted on this volume.
  /// Each value may be one of: `DELETE`.
  final Input<List<String>>? restrictedActions;

  /// Security Style of the Volume. Use UNIX to use UNIX or NFSV4 ACLs for file permissions.
  /// Use NTFS to use NTFS ACLs for file permissions. Can only be set for volumes which use SMB together with NFS as protocol.
  /// Possible values are: `NTFS`, `UNIX`.
  final Input<String>? securityStyle;

  /// Share name (SMB) or export path (NFS) of the volume. Needs to be unique per location.
  final Input<String>? shareName;

  /// Settings for volumes with SMB access.
  /// Each value may be one of: `ENCRYPT_DATA`, `BROWSABLE`, `CHANGE_NOTIFY`, `NON_BROWSABLE`, `OPLOCKS`, `SHOW_SNAPSHOT`, `SHOW_PREVIOUS_VERSIONS`, `ACCESS_BASED_ENUMERATION`, `CONTINUOUSLY_AVAILABLE`.
  final Input<List<String>>? smbSettings;

  /// If enabled, a NFS volume will contain a read-only .snapshot directory which provides access to each of the volume's snapshots. Will enable "Previous Versions" support for SMB.
  final Input<bool>? snapshotDirectory;

  /// Snapshot policy defines the schedule for automatic snapshot creation.
  /// To disable automatic snapshot creation you have to remove the whole<span pulumi-lang-nodejs=" snapshotPolicy " pulumi-lang-dotnet=" SnapshotPolicy " pulumi-lang-go=" snapshotPolicy " pulumi-lang-python=" snapshot_policy " pulumi-lang-yaml=" snapshotPolicy " pulumi-lang-java=" snapshotPolicy "> snapshot_policy </span>block.
  /// Structure is documented below.
  final Input<VolumeSnapshotPolicy>? snapshotPolicy;

  /// Name of the storage pool to create the volume in. Pool needs enough spare capacity to accommodate the volume.
  final Input<String> storagePool;

  /// Optional. Custom Performance Total Throughput of the pool (in MiB/s).
  final Input<double>? throughputMibps;

  /// Tiering policy for the volume.
  /// Structure is documented below.
  final Input<VolumeTieringPolicy>? tieringPolicy;

  /// Unix permission the mount point will be created with. Default is 0770. Applicable for UNIX security style volumes only.
  final Input<String>? unixPermissions;

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
      map['backupConfig'] =
          Input.mapOptionalInputValue<VolumeBackupConfig, Map<String, dynamic>>(
              backupConfigValue, (value) => value.toMap());
    }
    final blockDevicesValue = blockDevices;
    if (blockDevicesValue != null) {
      map['blockDevices'] = Input.mapOptionalInputValue<List<VolumeBlockDevice>,
              List<Map<String, dynamic>>>(
          blockDevicesValue,
          (value) => Input.encodeList<VolumeBlockDevice, Map<String, dynamic>>(
              value, (value) => value.toMap()));
    }
    final cacheParametersValue = cacheParameters;
    if (cacheParametersValue != null) {
      map['cacheParameters'] = Input.mapOptionalInputValue<
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
      map['exportPolicy'] =
          Input.mapOptionalInputValue<VolumeExportPolicy, Map<String, dynamic>>(
              exportPolicyValue, (value) => value.toMap());
    }
    final hybridReplicationParametersValue = hybridReplicationParameters;
    if (hybridReplicationParametersValue != null) {
      map['hybridReplicationParameters'] = Input.mapOptionalInputValue<
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
      map['restoreParameters'] = Input.mapOptionalInputValue<
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
      map['snapshotPolicy'] = Input.mapOptionalInputValue<VolumeSnapshotPolicy,
          Map<String, dynamic>>(snapshotPolicyValue, (value) => value.toMap());
    }
    map['storagePool'] = storagePool;
    final throughputMibpsValue = throughputMibps;
    if (throughputMibpsValue != null) {
      map['throughputMibps'] = throughputMibpsValue;
    }
    final tieringPolicyValue = tieringPolicy;
    if (tieringPolicyValue != null) {
      map['tieringPolicy'] = Input.mapOptionalInputValue<VolumeTieringPolicy,
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
          Input.asOptionalInput<VolumeBackupConfig>(map['backupConfig']),
      blockDevices:
          Input.asOptionalInput<List<VolumeBlockDevice>>(map['blockDevices']),
      cacheParameters:
          Input.asOptionalInput<VolumeCacheParameters>(map['cacheParameters']),
      capacityGib: Input.asInput<String>(map['capacityGib']),
      deletionPolicy: Input.asOptionalInput<String>(map['deletionPolicy']),
      description: Input.asOptionalInput<String>(map['description']),
      exportPolicy:
          Input.asOptionalInput<VolumeExportPolicy>(map['exportPolicy']),
      hybridReplicationParameters:
          Input.asOptionalInput<VolumeHybridReplicationParameters>(
              map['hybridReplicationParameters']),
      kerberosEnabled: Input.asOptionalInput<bool>(map['kerberosEnabled']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      largeCapacity: Input.asOptionalInput<bool>(map['largeCapacity']),
      location: Input.asInput<String>(map['location']),
      multipleEndpoints: Input.asOptionalInput<bool>(map['multipleEndpoints']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      protocols: Input.asInput<List<String>>(map['protocols']),
      restoreParameters: Input.asOptionalInput<VolumeRestoreParameters>(
          map['restoreParameters']),
      restrictedActions:
          Input.asOptionalInput<List<String>>(map['restrictedActions']),
      securityStyle: Input.asOptionalInput<String>(map['securityStyle']),
      shareName: Input.asOptionalInput<String>(map['shareName']),
      smbSettings: Input.asOptionalInput<List<String>>(map['smbSettings']),
      snapshotDirectory: Input.asOptionalInput<bool>(map['snapshotDirectory']),
      snapshotPolicy:
          Input.asOptionalInput<VolumeSnapshotPolicy>(map['snapshotPolicy']),
      storagePool: Input.asInput<String>(map['storagePool']),
      throughputMibps: Input.asOptionalInput<double>(map['throughputMibps']),
      tieringPolicy:
          Input.asOptionalInput<VolumeTieringPolicy>(map['tieringPolicy']),
      unixPermissions: Input.asOptionalInput<String>(map['unixPermissions']),
    );
  }
}
