import 'package:pulumi/pulumi.dart' as pulumi;
import '../cluster_automated_backup_policy/cluster_automated_backup_policy.dart';
import '../cluster_backup_source/cluster_backup_source.dart';
import '../cluster_continuous_backup_config/cluster_continuous_backup_config.dart';
import '../cluster_continuous_backup_info/cluster_continuous_backup_info.dart';
import '../cluster_encryption_config/cluster_encryption_config.dart';
import '../cluster_encryption_info/cluster_encryption_info.dart';
import '../cluster_initial_user/cluster_initial_user.dart';
import '../cluster_maintenance_update_policy/cluster_maintenance_update_policy.dart';
import '../cluster_migration_source/cluster_migration_source.dart';
import '../cluster_network_config/cluster_network_config.dart';
import '../cluster_psc_config/cluster_psc_config.dart';
import '../cluster_restore_backup_source/cluster_restore_backup_source.dart';
import '../cluster_restore_continuous_backup_source/cluster_restore_continuous_backup_source.dart';
import '../cluster_secondary_config/cluster_secondary_config.dart';
import '../cluster_trial_metadata/cluster_trial_metadata.dart';
import 'cluster_args.dart';

/// ## Example Usage
///
/// ### Alloydb Cluster Basic
///
///
///
/// ### Alloydb Cluster Before Upgrade
///
///
///
/// ### Alloydb Cluster After Upgrade
///
///
///
/// ### Alloydb Cluster Full
///
///
///
/// ### Alloydb Cluster Restore
///
///
///
/// ### Alloydb Secondary Cluster Basic
///
///
///
///
/// ## Import
///
/// Cluster can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/clusters/{{cluster_id}}`
///
/// * `{{project}}/{{location}}/{{cluster_id}}`
///
/// * `{{location}}/{{cluster_id}}`
///
/// * `{{cluster_id}}`
///
/// When using the `pulumi import` command, Cluster can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:alloydb/cluster:Cluster default projects/{{project}}/locations/{{location}}/clusters/{{cluster_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:alloydb/cluster:Cluster default {{project}}/{{location}}/{{cluster_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:alloydb/cluster:Cluster default {{location}}/{{cluster_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:alloydb/cluster:Cluster default {{cluster_id}}
/// ```
class Cluster extends pulumi.CustomResource {
  /// Annotations to allow client tools to store small amount of arbitrary data. This is distinct from labels. https://google.aip.dev/128
  /// An object containing a list of "key": value pairs. Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the annotations present in your configuration.
  /// Please refer to the field `effective_annotations` for all of the annotations present on the resource.
  late final pulumi.Output<Map<String, String>?> annotations;

  /// The automated backup policy for this cluster. AutomatedBackupPolicy is disabled by default.
  /// Structure is documented below.
  late final pulumi.Output<ClusterAutomatedBackupPolicy> automatedBackupPolicy;

  /// Cluster created from backup.
  /// Structure is documented below.
  late final pulumi.Output<List<ClusterBackupSource>> backupSources;

  /// The ID of the alloydb cluster.
  late final pulumi.Output<String> clusterId;

  /// The type of cluster. If not set, defaults to PRIMARY.
  /// Default value is `PRIMARY`.
  /// Possible values are: `PRIMARY`, `SECONDARY`.
  late final pulumi.Output<String?> clusterType;

  /// The continuous backup config for this cluster.
  /// If no policy is provided then the default policy will be used. The default policy takes one backup a day and retains backups for 14 days.
  /// Structure is documented below.
  late final pulumi.Output<ClusterContinuousBackupConfig>
      continuousBackupConfig;

  /// ContinuousBackupInfo describes the continuous backup properties of a cluster.
  /// Structure is documented below.
  late final pulumi.Output<List<ClusterContinuousBackupInfo>>
      continuousBackupInfos;

  /// The database engine major version. This is an optional field and it's populated at the Cluster creation time.
  /// Note: Changing this field to a higer version results in upgrading the AlloyDB cluster which is an irreversible change.
  late final pulumi.Output<String> databaseVersion;

  /// Policy to determine if the cluster should be deleted forcefully.
  /// Deleting a cluster forcefully, deletes the cluster and all its associated instances within the cluster.
  /// Deleting a Secondary cluster with a secondary instance REQUIRES setting deletion_policy = "FORCE" otherwise an error is returned. This is needed as there is no support to delete just the secondary instance, and the only way to delete secondary instance is to delete the associated secondary cluster forcefully which also deletes the secondary instance.
  /// Possible values: DEFAULT, FORCE
  late final pulumi.Output<String?> deletionPolicy;
  late final pulumi.Output<bool?> deletionProtection;

  /// User-settable and human-readable display name for the Cluster.
  late final pulumi.Output<String?> displayName;
  late final pulumi.Output<Map<String, String>> effectiveAnnotations;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// EncryptionConfig describes the encryption config of a cluster or a backup that is encrypted with a CMEK (customer-managed encryption key).
  /// Structure is documented below.
  late final pulumi.Output<ClusterEncryptionConfig?> encryptionConfig;

  /// (Output)
  /// Output only. The encryption information for the WALs and backups required for ContinuousBackup.
  /// Structure is documented below.
  late final pulumi.Output<List<ClusterEncryptionInfo>> encryptionInfos;

  /// For Resource freshness validation (https://google.aip.dev/154)
  late final pulumi.Output<String?> etag;

  /// Initial user to setup during cluster creation. If unset for new Clusters, a postgres role with null password is created. You will need to create additional users or set the password in order to log in.
  /// Structure is documented below.
  late final pulumi.Output<ClusterInitialUser?> initialUser;

  /// User-defined labels for the alloydb cluster.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The location where the alloydb cluster should reside.
  late final pulumi.Output<String> location;

  /// MaintenanceUpdatePolicy defines the policy for system updates.
  /// Structure is documented below.
  late final pulumi.Output<ClusterMaintenanceUpdatePolicy?>
      maintenanceUpdatePolicy;

  /// Cluster created via DMS migration.
  /// Structure is documented below.
  late final pulumi.Output<List<ClusterMigrationSource>> migrationSources;

  /// The name of the cluster resource.
  late final pulumi.Output<String> name;

  /// Metadata related to network configuration.
  /// Structure is documented below.
  late final pulumi.Output<ClusterNetworkConfig> networkConfig;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// Configuration for Private Service Connect (PSC) for the cluster.
  /// Structure is documented below.
  late final pulumi.Output<ClusterPscConfig?> pscConfig;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// Output only. Reconciling (https://google.aip.dev/128#reconciliation).
  /// Set to true if the current state of Cluster does not match the user's intended state, and the service is actively updating the resource to reconcile them.
  /// This can happen due to user-triggered updates or system actions like failover or maintenance.
  late final pulumi.Output<bool> reconciling;

  /// The source when restoring from a backup. Conflicts with 'restore_continuous_backup_source', both can't be set together.
  /// Structure is documented below.
  late final pulumi.Output<ClusterRestoreBackupSource?> restoreBackupSource;

  /// The source when restoring via point in time recovery (PITR). Conflicts with 'restore_backup_source', both can't be set together.
  /// Structure is documented below.
  late final pulumi.Output<ClusterRestoreContinuousBackupSource?>
      restoreContinuousBackupSource;

  /// Configuration of the secondary cluster for Cross Region Replication. This should be set if and only if the cluster is of type SECONDARY.
  /// Structure is documented below.
  late final pulumi.Output<ClusterSecondaryConfig?> secondaryConfig;

  /// Set to true to skip awaiting on the major version upgrade of the cluster.
  /// Possible values: true, false
  /// Default value: "true"
  late final pulumi.Output<bool?> skipAwaitMajorVersionUpgrade;

  /// Output only. The current serving state of the cluster.
  late final pulumi.Output<String> state;

  /// The subscrition type of cluster.
  /// Possible values are: `TRIAL`, `STANDARD`.
  late final pulumi.Output<String> subscriptionType;

  /// Contains information and all metadata related to TRIAL clusters.
  /// Structure is documented below.
  late final pulumi.Output<List<ClusterTrialMetadata>> trialMetadatas;

  /// The system-generated UID of the resource.
  late final pulumi.Output<String> uid;

  Cluster(
    String name, {
    ClusterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:alloydb/cluster:Cluster',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.annotations = registerOutput<Map<String, String>?>('annotations');
    this.automatedBackupPolicy =
        registerOutput<ClusterAutomatedBackupPolicy>('automatedBackupPolicy');
    this.backupSources =
        registerOutput<List<ClusterBackupSource>>('backupSources');
    this.clusterId = registerOutput<String>('clusterId');
    this.clusterType = registerOutput<String?>('clusterType');
    this.continuousBackupConfig =
        registerOutput<ClusterContinuousBackupConfig>('continuousBackupConfig');
    this.continuousBackupInfos =
        registerOutput<List<ClusterContinuousBackupInfo>>(
            'continuousBackupInfos');
    this.databaseVersion = registerOutput<String>('databaseVersion');
    this.deletionPolicy = registerOutput<String?>('deletionPolicy');
    this.deletionProtection = registerOutput<bool?>('deletionProtection');
    this.displayName = registerOutput<String?>('displayName');
    this.effectiveAnnotations =
        registerOutput<Map<String, String>>('effectiveAnnotations');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.encryptionConfig =
        registerOutput<ClusterEncryptionConfig?>('encryptionConfig');
    this.encryptionInfos =
        registerOutput<List<ClusterEncryptionInfo>>('encryptionInfos');
    this.etag = registerOutput<String?>('etag');
    this.initialUser = registerOutput<ClusterInitialUser?>('initialUser');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.maintenanceUpdatePolicy =
        registerOutput<ClusterMaintenanceUpdatePolicy?>(
            'maintenanceUpdatePolicy');
    this.migrationSources =
        registerOutput<List<ClusterMigrationSource>>('migrationSources');
    this.name = registerOutput<String>('name');
    this.networkConfig = registerOutput<ClusterNetworkConfig>('networkConfig');
    this.project = registerOutput<String>('project');
    this.pscConfig = registerOutput<ClusterPscConfig?>('pscConfig');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.reconciling = registerOutput<bool>('reconciling');
    this.restoreBackupSource =
        registerOutput<ClusterRestoreBackupSource?>('restoreBackupSource');
    this.restoreContinuousBackupSource =
        registerOutput<ClusterRestoreContinuousBackupSource?>(
            'restoreContinuousBackupSource');
    this.secondaryConfig =
        registerOutput<ClusterSecondaryConfig?>('secondaryConfig');
    this.skipAwaitMajorVersionUpgrade =
        registerOutput<bool?>('skipAwaitMajorVersionUpgrade');
    this.state = registerOutput<String>('state');
    this.subscriptionType = registerOutput<String>('subscriptionType');
    this.trialMetadatas =
        registerOutput<List<ClusterTrialMetadata>>('trialMetadatas');
    this.uid = registerOutput<String>('uid');
  }
}
