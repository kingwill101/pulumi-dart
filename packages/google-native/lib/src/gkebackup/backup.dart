import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_args.dart';
import 'cluster_metadata_response.dart';
import 'encryption_key_response.dart';
import 'namespaced_names_response.dart';
import 'namespaces_response.dart';

/// Creates a Backup for the given BackupPlan.
/// Auto-naming is currently not supported for this resource.
class Backup extends pulumi.CustomResource {
  /// If True, all namespaces were included in the Backup.
  late final pulumi.Output<bool> allNamespaces;

  /// Optional. The client-provided short name for the Backup resource. This name must: - be between 1 and 63 characters long (inclusive) - consist of only lower-case ASCII letters, numbers, and dashes - start with a lower-case letter - end with a lower-case letter or number - be unique within the set of Backups in this BackupPlan
  late final pulumi.Output<String?> backupId;
  late final pulumi.Output<String> backupPlanId;

  /// Information about the GKE cluster from which this Backup was created.
  late final pulumi.Output<ClusterMetadataResponse> clusterMetadata;

  /// Completion time of the Backup
  late final pulumi.Output<String> completeTime;

  /// The size of the config backup in bytes.
  late final pulumi.Output<String> configBackupSizeBytes;

  /// Whether or not the Backup contains Kubernetes Secrets. Controlled by the parent BackupPlan's include_secrets value.
  late final pulumi.Output<bool> containsSecrets;

  /// Whether or not the Backup contains volume data. Controlled by the parent BackupPlan's include_volume_data value.
  late final pulumi.Output<bool> containsVolumeData;

  /// The timestamp when this Backup resource was created.
  late final pulumi.Output<String> createTime;

  /// Optional. Minimum age for this Backup (in days). If this field is set to a non-zero value, the Backup will be "locked" against deletion (either manual or automatic deletion) for the number of days provided (measured from the creation time of the Backup). MUST be an integer value between 0-90 (inclusive). Defaults to parent BackupPlan's backup_delete_lock_days setting and may only be increased (either at creation time or in a subsequent update).
  late final pulumi.Output<int> deleteLockDays;

  /// The time at which an existing delete lock will expire for this backup (calculated from create_time + delete_lock_days).
  late final pulumi.Output<String> deleteLockExpireTime;

  /// Optional. User specified descriptive string for this Backup.
  late final pulumi.Output<String> description;

  /// The customer managed encryption key that was used to encrypt the Backup's artifacts. Inherited from the parent BackupPlan's encryption_key value.
  late final pulumi.Output<EncryptionKeyResponse> encryptionKey;

  /// `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a backup from overwriting each other. It is strongly suggested that systems make use of the `etag` in the read-modify-write cycle to perform backup updates in order to avoid race conditions: An `etag` is returned in the response to `GetBackup`, and systems are expected to put that etag in the request to `UpdateBackup` or `DeleteBackup` to ensure that their change will be applied to the same version of the resource.
  late final pulumi.Output<String> etag;

  /// Optional. A set of custom labels supplied by user.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// This flag indicates whether this Backup resource was created manually by a user or via a schedule in the BackupPlan. A value of True means that the Backup was created manually.
  late final pulumi.Output<bool> manual;

  /// The fully qualified name of the Backup. `projects/*/locations/*/backupPlans/*/backups/*`
  late final pulumi.Output<String> name;

  /// The total number of Kubernetes Pods contained in the Backup.
  late final pulumi.Output<int> podCount;
  late final pulumi.Output<String> project;

  /// The total number of Kubernetes resources included in the Backup.
  late final pulumi.Output<int> resourceCount;

  /// Optional. The age (in days) after which this Backup will be automatically deleted. Must be an integer value >= 0: - If 0, no automatic deletion will occur for this Backup. - If not 0, this must be >= delete_lock_days and <= 365. Once a Backup is created, this value may only be increased. Defaults to the parent BackupPlan's backup_retain_days value.
  late final pulumi.Output<int> retainDays;

  /// The time at which this Backup will be automatically deleted (calculated from create_time + retain_days).
  late final pulumi.Output<String> retainExpireTime;

  /// If set, the list of ProtectedApplications whose resources were included in the Backup.
  late final pulumi.Output<NamespacedNamesResponse> selectedApplications;

  /// If set, the list of namespaces that were included in the Backup.
  late final pulumi.Output<NamespacesResponse> selectedNamespaces;

  /// The total size of the Backup in bytes = config backup size + sum(volume backup sizes)
  late final pulumi.Output<String> sizeBytes;

  /// Current state of the Backup
  late final pulumi.Output<String> state;

  /// Human-readable description of why the backup is in the current `state`.
  late final pulumi.Output<String> stateReason;

  /// Server generated global unique identifier of [UUID4](https://en.wikipedia.org/wiki/Universally_unique_identifier)
  late final pulumi.Output<String> uid;

  /// The timestamp when this Backup resource was last updated.
  late final pulumi.Output<String> updateTime;

  /// The total number of volume backups contained in the Backup.
  late final pulumi.Output<int> volumeCount;

  /// Creates a new [Backup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Backup]. {@macro pulumi_gkebackup_v1_backup_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Backup(String name, {BackupArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'google-native:gkebackup/v1:Backup',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    this.allNamespaces = registerOutput<bool>('allNamespaces');
    this.backupId = registerOutput<String?>('backupId');
    this.backupPlanId = registerOutput<String>('backupPlanId');
    this.clusterMetadata = registerOutput<ClusterMetadataResponse>(
      'clusterMetadata',
    );
    this.completeTime = registerOutput<String>('completeTime');
    this.configBackupSizeBytes = registerOutput<String>(
      'configBackupSizeBytes',
    );
    this.containsSecrets = registerOutput<bool>('containsSecrets');
    this.containsVolumeData = registerOutput<bool>('containsVolumeData');
    this.createTime = registerOutput<String>('createTime');
    this.deleteLockDays = registerOutput<int>('deleteLockDays');
    this.deleteLockExpireTime = registerOutput<String>('deleteLockExpireTime');
    this.description = registerOutput<String>('description');
    this.encryptionKey = registerOutput<EncryptionKeyResponse>('encryptionKey');
    this.etag = registerOutput<String>('etag');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.manual = registerOutput<bool>('manual');
    this.name = registerOutput<String>('name');
    this.podCount = registerOutput<int>('podCount');
    this.project = registerOutput<String>('project');
    this.resourceCount = registerOutput<int>('resourceCount');
    this.retainDays = registerOutput<int>('retainDays');
    this.retainExpireTime = registerOutput<String>('retainExpireTime');
    this.selectedApplications = registerOutput<NamespacedNamesResponse>(
      'selectedApplications',
    );
    this.selectedNamespaces = registerOutput<NamespacesResponse>(
      'selectedNamespaces',
    );
    this.sizeBytes = registerOutput<String>('sizeBytes');
    this.state = registerOutput<String>('state');
    this.stateReason = registerOutput<String>('stateReason');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
    this.volumeCount = registerOutput<int>('volumeCount');
  }
}
