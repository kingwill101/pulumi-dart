import 'package:pulumi/pulumi.dart';
import 'backup_config_response.dart';
import 'backup_plan_args.dart';
import 'retention_policy_response.dart';
import 'schedule_response.dart';

/// Creates a new BackupPlan in a given location.
/// Auto-naming is currently not supported for this resource.
class BackupPlan extends CustomResource {
  /// Optional. Defines the configuration of Backups created via this BackupPlan.
  late final Output<BackupConfigResponse> backupConfig;

  /// Required. The client-provided short name for the BackupPlan resource. This name must: - be between 1 and 63 characters long (inclusive) - consist of only lower-case ASCII letters, numbers, and dashes - start with a lower-case letter - end with a lower-case letter or number - be unique within the set of BackupPlans in this location
  late final Output<String> backupPlanId;

  /// Optional. Defines a schedule for automatic Backup creation via this BackupPlan.
  late final Output<ScheduleResponse> backupSchedule;

  /// Immutable. The source cluster from which Backups will be created via this BackupPlan. Valid formats: - `projects/*/locations/*/clusters/*` - `projects/*/zones/*/clusters/*`
  late final Output<String> cluster;

  /// The timestamp when this BackupPlan resource was created.
  late final Output<String> createTime;

  /// Optional. This flag indicates whether this BackupPlan has been deactivated. Setting this field to True locks the BackupPlan such that no further updates will be allowed (except deletes), including the deactivated field itself. It also prevents any new Backups from being created via this BackupPlan (including scheduled Backups). Default: False
  late final Output<bool> deactivated;

  /// Optional. User specified descriptive string for this BackupPlan.
  late final Output<String> description;

  /// `etag` is used for optimistic concurrency control as a way to help prevent simultaneous updates of a backup plan from overwriting each other. It is strongly suggested that systems make use of the 'etag' in the read-modify-write cycle to perform BackupPlan updates in order to avoid race conditions: An `etag` is returned in the response to `GetBackupPlan`, and systems are expected to put that etag in the request to `UpdateBackupPlan` or `DeleteBackupPlan` to ensure that their change will be applied to the same version of the resource.
  late final Output<String> etag;

  /// Optional. A set of custom labels supplied by user.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// The full name of the BackupPlan resource. Format: `projects/*/locations/*/backupPlans/*`
  late final Output<String> name;
  late final Output<String> project;

  /// The number of Kubernetes Pods backed up in the last successful Backup created via this BackupPlan.
  late final Output<int> protectedPodCount;

  /// Optional. RetentionPolicy governs lifecycle of Backups created under this plan.
  late final Output<RetentionPolicyResponse> retentionPolicy;

  /// State of the BackupPlan. This State field reflects the various stages a BackupPlan can be in during the Create operation. It will be set to "DEACTIVATED" if the BackupPlan is deactivated on an Update
  late final Output<String> state;

  /// Human-readable description of why BackupPlan is in the current `state`
  late final Output<String> stateReason;

  /// Server generated global unique identifier of [UUID](https://en.wikipedia.org/wiki/Universally_unique_identifier) format.
  late final Output<String> uid;

  /// The timestamp when this BackupPlan resource was last updated.
  late final Output<String> updateTime;

  BackupPlan(
    String name, {
    BackupPlanArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:gkebackup/v1:BackupPlan',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.backupConfig = Output.createUnknown<BackupConfigResponse>();
    this.backupPlanId = Output.createUnknown<String>();
    this.backupSchedule = Output.createUnknown<ScheduleResponse>();
    this.cluster = Output.createUnknown<String>();
    this.createTime = Output.createUnknown<String>();
    this.deactivated = Output.createUnknown<bool>();
    this.description = Output.createUnknown<String>();
    this.etag = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.protectedPodCount = Output.createUnknown<int>();
    this.retentionPolicy = Output.createUnknown<RetentionPolicyResponse>();
    this.state = Output.createUnknown<String>();
    this.stateReason = Output.createUnknown<String>();
    this.uid = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
