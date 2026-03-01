import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_config_response.dart';
import 'backup_plan_args.dart';
import 'retention_policy_response.dart';
import 'schedule_response.dart';

/// Creates a new BackupPlan in a given location.
/// Auto-naming is currently not supported for this resource.
class BackupPlan extends pulumi.CustomResource {
  /// Optional. Defines the configuration of Backups created via this BackupPlan.
  late final pulumi.Output<BackupConfigResponse> backupConfig;

  /// Required. The client-provided short name for the BackupPlan resource. This name must: - be between 1 and 63 characters long (inclusive) - consist of only lower-case ASCII letters, numbers, and dashes - start with a lower-case letter - end with a lower-case letter or number - be unique within the set of BackupPlans in this location
  late final pulumi.Output<String> backupPlanId;

  /// Optional. Defines a schedule for automatic Backup creation via this BackupPlan.
  late final pulumi.Output<ScheduleResponse> backupSchedule;

  /// Immutable. The source cluster from which Backups will be created via this BackupPlan. Valid formats: - `projects/*/locations/*/clusters/*` - `projects/*/zones/*/clusters/*`
  late final pulumi.Output<String> cluster;

  /// The timestamp when this BackupPlan resource was created.
  late final pulumi.Output<String> createTime;

  /// Optional. This flag indicates whether this BackupPlan has been deactivated. Setting this field to True locks the BackupPlan such that no further updates will be allowed (except deletes), including the deactivated field itself. It also prevents any new Backups from being created via this BackupPlan (including scheduled Backups). Default: False
  late final pulumi.Output<bool> deactivated;

  /// Optional. User specified descriptive string for this BackupPlan.
  late final pulumi.Output<String> description;

  /// `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a backup plan from overwriting each other. It is strongly suggested that systems make use of the 'etag' in the read-modify-write cycle to perform BackupPlan updates in order to avoid race conditions: An `etag` is returned in the response to `GetBackupPlan`, and systems are expected to put that etag in the request to `UpdateBackupPlan` or `DeleteBackupPlan` to ensure that their change will be applied to the same version of the resource.
  late final pulumi.Output<String> etag;

  /// Optional. A set of custom labels supplied by user.
  late final pulumi.Output<Map<String, String>> labels;
  late final pulumi.Output<String> location;

  /// The full name of the BackupPlan resource. Format: `projects/*/locations/*/backupPlans/*`
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// The number of Kubernetes Pods backed up in the last successful Backup created via this BackupPlan.
  late final pulumi.Output<int> protectedPodCount;

  /// Optional. RetentionPolicy governs lifecycle of Backups created under this plan.
  late final pulumi.Output<RetentionPolicyResponse> retentionPolicy;

  /// State of the BackupPlan. This State field reflects the various stages a BackupPlan can be in during the Create operation. It will be set to "DEACTIVATED" if the BackupPlan is deactivated on an Update
  late final pulumi.Output<String> state;

  /// Human-readable description of why BackupPlan is in the current `state`
  late final pulumi.Output<String> stateReason;

  /// Server generated global unique identifier of [UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier) format.
  late final pulumi.Output<String> uid;

  /// The timestamp when this BackupPlan resource was last updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [BackupPlan].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [BackupPlan]. {@macro pulumi_gkebackup_v1_backup_plan_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  BackupPlan(
    String name, {
    BackupPlanArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'google-native:gkebackup/v1:BackupPlan',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.backupConfig = registerOutput<BackupConfigResponse>('backupConfig');
    this.backupPlanId = registerOutput<String>('backupPlanId');
    this.backupSchedule = registerOutput<ScheduleResponse>('backupSchedule');
    this.cluster = registerOutput<String>('cluster');
    this.createTime = registerOutput<String>('createTime');
    this.deactivated = registerOutput<bool>('deactivated');
    this.description = registerOutput<String>('description');
    this.etag = registerOutput<String>('etag');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.protectedPodCount = registerOutput<int>('protectedPodCount');
    this.retentionPolicy = registerOutput<RetentionPolicyResponse>(
      'retentionPolicy',
    );
    this.state = registerOutput<String>('state');
    this.stateReason = registerOutput<String>('stateReason');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
