import 'package:pulumi/pulumi.dart';
import '../volume_backup_config/volume_backup_config.dart';
import '../volume_block_device/volume_block_device.dart';
import '../volume_cache_parameters/volume_cache_parameters.dart';
import '../volume_export_policy/volume_export_policy.dart';
import '../volume_hybrid_replication_parameters/volume_hybrid_replication_parameters.dart';
import '../volume_mount_option/volume_mount_option.dart';
import '../volume_restore_parameters/volume_restore_parameters.dart';
import '../volume_snapshot_policy/volume_snapshot_policy.dart';
import '../volume_tiering_policy/volume_tiering_policy.dart';
import 'volume_args.dart';

/// A volume is a file system container in a storage pool that stores application, database, and user data.
///
/// You can create a volume's capacity using the available capacity in the storage pool and you can define and resize the capacity without disruption to any processes.
///
/// Storage pool settings apply to the volumes contained within them automatically.
///
///
/// To get more information about Volume, see:
///
/// * [API documentation](https://cloud.google.com/netapp/volumes/docs/reference/rest/v1/projects.locations.volumes)
/// * How-to Guides
/// * [Documentation](https://cloud.google.com/netapp/volumes/docs/configure-and-use/volumes/overview)
/// * [Quickstart](https://cloud.google.com/netapp/volumes/docs/get-started/quickstarts/create-volume)
///
/// ## Example Usage
///
/// ### Netapp Volume Basic
///
///
///
///
/// ## Import
///
/// Volume can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/volumes/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, Volume can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:netapp/volume:Volume default projects/{{project}}/locations/{{location}}/volumes/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:netapp/volume:Volume default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:netapp/volume:Volume default {{location}}/{{name}}
/// ```
class Volume extends CustomResource {
  /// Reports the resource name of the Active Directory policy being used. Inherited from storage pool.
  late final Output<String> activeDirectory;

  /// Backup configuration for the volume.
  /// Structure is documented below.
  late final Output<VolumeBackupConfig?> backupConfig;

  /// Block device represents the device(s) which are stored in the block volume.
  /// Currently, only one block device is permitted per Volume.
  /// Structure is documented below.
  late final Output<List<VolumeBlockDevice>?> blockDevices;

  /// Cache parameters for the volume.
  /// Structure is documented below.
  late final Output<VolumeCacheParameters?> cacheParameters;

  /// Capacity of the volume (in GiB).
  late final Output<String> capacityGib;

  /// Output only. Size of the volume cold tier data in GiB.
  late final Output<String> coldTierSizeGib;

  /// Create time of the volume. A timestamp in RFC3339 UTC "Zulu" format. Examples: "2023-06-22T09:13:01.617Z".
  late final Output<String> createTime;

  /// Policy to determine if the volume should be deleted forcefully.
  /// Volumes may have nested snapshot resources. Deleting such a volume will fail.
  /// Setting this parameter to FORCE will delete volumes including nested snapshots.
  /// Possible values: DEFAULT, FORCE.
  late final Output<String?> deletionPolicy;

  /// An optional description of this resource.
  late final Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final Output<Map<String, String>> effectiveLabels;

  /// Reports the data-at-rest encryption type of the volume. Inherited from storage pool.
  late final Output<String> encryptionType;

  /// Export policy of the volume for NFSV3 and/or NFSV4.1 access.
  /// Structure is documented below.
  late final Output<VolumeExportPolicy?> exportPolicy;

  /// Indicates whether the volume is part of a volume replication relationship.
  late final Output<bool> hasReplication;

  /// Total hot tier data rounded down to the nearest GiB used by the volume. This field is only used for flex Service Level
  late final Output<String> hotTierSizeUsedGib;

  /// [Volume migration](https://docs.cloud.google.com/netapp/volumes/docs/migrate/ontap/overview) and
  /// [external replication](https://docs.cloud.google.com/netapp/volumes/docs/protect-data/replicate-ontap/overview)
  /// are two types of Hybrid Replication. This parameter block specifies the parameters for a hybrid replication.
  /// Structure is documented below.
  late final Output<VolumeHybridReplicationParameters?>
      hybridReplicationParameters;

  /// Flag indicating if the volume is a kerberos volume or not, export policy rules control kerberos security modes (krb5, krb5i, krb5p).
  late final Output<bool?> kerberosEnabled;

  /// Reports the CMEK policy resurce name being used for volume encryption. Inherited from storage pool.
  late final Output<String> kmsConfig;

  /// Labels as key value pairs. Example: `{ "owner": "Bob", "department": "finance", "purpose": "testing" }`.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final Output<Map<String, String>?> labels;

  /// Optional. Flag indicating if the volume will be a large capacity volume or a regular volume.
  late final Output<bool?> largeCapacity;

  /// Flag indicating if the volume is NFS LDAP enabled or not. Inherited from storage pool.
  late final Output<bool> ldapEnabled;

  /// Name of the pool location. Usually a region name, expect for some STANDARD service level pools which require a zone name.
  late final Output<String> location;

  /// Reports mount instructions for this volume.
  /// Structure is documented below.
  late final Output<List<VolumeMountOption>> mountOptions;

  /// Optional. Flag indicating if the volume will have an IP address per node for volumes supporting multiple IP endpoints.
  /// Only the volume with largeCapacity will be allowed to have multiple endpoints.
  late final Output<bool?> multipleEndpoints;

  /// The name of the volume. Needs to be unique per location.
  late final Output<String> name;

  /// VPC network name with format: `projects/{{project}}/global/networks/{{network}}`. Inherited from storage pool.
  late final Output<String> network;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The protocol of the volume. Allowed combinations are `['NFSV3']`, `['NFSV4']`, `['SMB']`, `['NFSV3', 'NFSV4']`, `['SMB', 'NFSV3']` and `['SMB', 'NFSV4']`.
  /// Each value may be one of: `NFSV3`, `NFSV4`, `SMB`, `ISCSI`.
  late final Output<List<String>> protocols;

  /// Name of the Private Service Access allocated range. Inherited from storage pool.
  late final Output<String> psaRange;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final Output<Map<String, String>> pulumiLabels;

  /// Specifies the replica zone for regional volume.
  late final Output<String> replicaZone;

  /// Used to create this volume from a snapshot (= cloning) or an backup.
  /// Structure is documented below.
  late final Output<VolumeRestoreParameters?> restoreParameters;

  /// List of actions that are restricted on this volume.
  /// Each value may be one of: `DELETE`.
  late final Output<List<String>?> restrictedActions;

  /// Security Style of the Volume. Use UNIX to use UNIX or NFSV4 ACLs for file permissions.
  /// Use NTFS to use NTFS ACLs for file permissions. Can only be set for volumes which use SMB together with NFS as protocol.
  /// Possible values are: `NTFS`, `UNIX`.
  late final Output<String> securityStyle;

  /// Service level of the volume. Inherited from storage pool. Supported values are : PREMIUM, EXTREME, STANDARD, FLEX.
  late final Output<String> serviceLevel;

  /// Share name (SMB) or export path (NFS) of the volume. Needs to be unique per location.
  late final Output<String?> shareName;

  /// Settings for volumes with SMB access.
  /// Each value may be one of: `ENCRYPT_DATA`, `BROWSABLE`, `CHANGE_NOTIFY`, `NON_BROWSABLE`, `OPLOCKS`, `SHOW_SNAPSHOT`, `SHOW_PREVIOUS_VERSIONS`, `ACCESS_BASED_ENUMERATION`, `CONTINUOUSLY_AVAILABLE`.
  late final Output<List<String>> smbSettings;

  /// If enabled, a NFS volume will contain a read-only .snapshot directory which provides access to each of the volume's snapshots. Will enable "Previous Versions" support for SMB.
  late final Output<bool?> snapshotDirectory;

  /// Snapshot policy defines the schedule for automatic snapshot creation.
  /// To disable automatic snapshot creation you have to remove the whole snapshot_policy block.
  /// Structure is documented below.
  late final Output<VolumeSnapshotPolicy?> snapshotPolicy;

  /// State of the volume.
  late final Output<String> state;

  /// State details of the volume.
  late final Output<String> stateDetails;

  /// Name of the storage pool to create the volume in. Pool needs enough spare capacity to accommodate the volume.
  late final Output<String> storagePool;

  /// Optional. Custom Performance Total Throughput of the pool (in MiB/s).
  late final Output<double> throughputMibps;

  /// Tiering policy for the volume.
  /// Structure is documented below.
  late final Output<VolumeTieringPolicy?> tieringPolicy;

  /// Unix permission the mount point will be created with. Default is 0770. Applicable for UNIX security style volumes only.
  late final Output<String> unixPermissions;

  /// Used capacity of the volume (in GiB). This is computed periodically and it does not represent the realtime usage.
  late final Output<String> usedGib;

  /// Specifies the active zone for regional volume.
  late final Output<String> zone;

  Volume(
    String name, {
    VolumeArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:netapp/volume:Volume',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.activeDirectory = registerOutput<String>('activeDirectory');
    this.backupConfig = registerOutput<VolumeBackupConfig?>('backupConfig');
    this.blockDevices =
        registerOutput<List<VolumeBlockDevice>?>('blockDevices');
    this.cacheParameters =
        registerOutput<VolumeCacheParameters?>('cacheParameters');
    this.capacityGib = registerOutput<String>('capacityGib');
    this.coldTierSizeGib = registerOutput<String>('coldTierSizeGib');
    this.createTime = registerOutput<String>('createTime');
    this.deletionPolicy = registerOutput<String?>('deletionPolicy');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.encryptionType = registerOutput<String>('encryptionType');
    this.exportPolicy = registerOutput<VolumeExportPolicy?>('exportPolicy');
    this.hasReplication = registerOutput<bool>('hasReplication');
    this.hotTierSizeUsedGib = registerOutput<String>('hotTierSizeUsedGib');
    this.hybridReplicationParameters =
        registerOutput<VolumeHybridReplicationParameters?>(
            'hybridReplicationParameters');
    this.kerberosEnabled = registerOutput<bool?>('kerberosEnabled');
    this.kmsConfig = registerOutput<String>('kmsConfig');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.largeCapacity = registerOutput<bool?>('largeCapacity');
    this.ldapEnabled = registerOutput<bool>('ldapEnabled');
    this.location = registerOutput<String>('location');
    this.mountOptions = registerOutput<List<VolumeMountOption>>('mountOptions');
    this.multipleEndpoints = registerOutput<bool?>('multipleEndpoints');
    this.name = registerOutput<String>('name');
    this.network = registerOutput<String>('network');
    this.project = registerOutput<String>('project');
    this.protocols = registerOutput<List<String>>('protocols');
    this.psaRange = registerOutput<String>('psaRange');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.replicaZone = registerOutput<String>('replicaZone');
    this.restoreParameters =
        registerOutput<VolumeRestoreParameters?>('restoreParameters');
    this.restrictedActions = registerOutput<List<String>?>('restrictedActions');
    this.securityStyle = registerOutput<String>('securityStyle');
    this.serviceLevel = registerOutput<String>('serviceLevel');
    this.shareName = registerOutput<String?>('shareName');
    this.smbSettings = registerOutput<List<String>>('smbSettings');
    this.snapshotDirectory = registerOutput<bool?>('snapshotDirectory');
    this.snapshotPolicy =
        registerOutput<VolumeSnapshotPolicy?>('snapshotPolicy');
    this.state = registerOutput<String>('state');
    this.stateDetails = registerOutput<String>('stateDetails');
    this.storagePool = registerOutput<String>('storagePool');
    this.throughputMibps = registerOutput<double>('throughputMibps');
    this.tieringPolicy = registerOutput<VolumeTieringPolicy?>('tieringPolicy');
    this.unixPermissions = registerOutput<String>('unixPermissions');
    this.usedGib = registerOutput<String>('usedGib');
    this.zone = registerOutput<String>('zone');
  }
}
