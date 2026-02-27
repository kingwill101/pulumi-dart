import 'package:pulumi/pulumi.dart' as pulumi;
import '../backup_plan_backup_config/backup_plan_backup_config.dart';
import '../backup_plan_backup_schedule/backup_plan_backup_schedule.dart';
import '../backup_plan_retention_policy/backup_plan_retention_policy.dart';
import 'backup_plan_gkebackup_args.dart';

/// Represents a Backup Plan instance.
///
///
/// To get more information about BackupPlan, see:
///
/// * [API documentation](https://cloud.google.com/kubernetes-engine/docs/add-on/backup-for-gke/reference/rest/v1/projects.locations.backupPlans)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/kubernetes-engine/docs/add-on/backup-for-gke)
///
/// ## Example Usage
///
/// ### Gkebackup Backupplan Basic
///
///
///
/// ### Gkebackup Backupplan Autopilot
///
///
///
/// ### Gkebackup Backupplan Cmek
///
///
///
/// ### Gkebackup Backupplan Nslabels
///
///
///
/// ### Gkebackup Backupplan Full
///
///
///
/// ### Gkebackup Backupplan Permissive
///
///
///
/// ### Gkebackup Backupplan Rpo Daily Window
///
///
///
/// ### Gkebackup Backupplan Rpo Weekly Window
///
///
///
///
/// ## Import
///
/// BackupPlan can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/backupPlans/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, BackupPlan can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:gkebackup/backupPlan:BackupPlan default projects/{{project}}/locations/{{location}}/backupPlans/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gkebackup/backupPlan:BackupPlan default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:gkebackup/backupPlan:BackupPlan default {{location}}/{{name}}
/// ```
class BackupPlanGkebackup extends pulumi.CustomResource {
  /// Defines the configuration of Backups created via this BackupPlan.
  /// Structure is documented below.
  late final pulumi.Output<BackupPlanBackupConfig?> backupConfig;

  /// Defines a schedule for automatic Backup creation via this BackupPlan.
  /// Structure is documented below.
  late final pulumi.Output<BackupPlanBackupSchedule?> backupSchedule;

  /// The source cluster from which Backups will be created via this BackupPlan.
  late final pulumi.Output<String> cluster;

  /// This flag indicates whether this BackupPlan has been deactivated.
  /// Setting this field to True locks the BackupPlan such that no further updates will be allowed
  /// (except deletes), including the deactivated field itself. It also prevents any new Backups
  /// from being created via this BackupPlan (including scheduled Backups).
  late final pulumi.Output<bool> deactivated;

  /// User specified descriptive string for this BackupPlan.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// etag is used for optimistic concurrency control as a way to help prevent simultaneous
  /// updates of a backup plan from overwriting each other. It is strongly suggested that
  /// systems make use of the 'etag' in the read-modify-write cycle to perform BackupPlan updates
  /// in order to avoid race conditions: An etag is returned in the response to backupPlans.get,
  /// and systems are expected to put that etag in the request to backupPlans.patch or
  /// backupPlans.delete to ensure that their change will be applied to the same version of the resource.
  late final pulumi.Output<String> etag;

  /// Description: A set of custom labels supplied by the user.
  /// A list of key->value pairs.
  /// Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The region of the Backup Plan.
  late final pulumi.Output<String> location;

  /// The full name of the BackupPlan Resource.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The number of Kubernetes Pods backed up in the last successful Backup created via this BackupPlan.
  late final pulumi.Output<int> protectedPodCount;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// RetentionPolicy governs lifecycle of Backups created under this plan.
  /// Structure is documented below.
  late final pulumi.Output<BackupPlanRetentionPolicy?> retentionPolicy;

  /// The State of the BackupPlan.
  late final pulumi.Output<String> state;

  /// Detailed description of why BackupPlan is in its current state.
  late final pulumi.Output<String> stateReason;

  /// Server generated, unique identifier of UUID format.
  late final pulumi.Output<String> uid;

  BackupPlanGkebackup(
    String name, {
    BackupPlanGkebackupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:gkebackup/backupPlan:BackupPlan',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.backupConfig = registerOutput<BackupPlanBackupConfig?>('backupConfig');
    this.backupSchedule =
        registerOutput<BackupPlanBackupSchedule?>('backupSchedule');
    this.cluster = registerOutput<String>('cluster');
    this.deactivated = registerOutput<bool>('deactivated');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.etag = registerOutput<String>('etag');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.protectedPodCount = registerOutput<int>('protectedPodCount');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.retentionPolicy =
        registerOutput<BackupPlanRetentionPolicy?>('retentionPolicy');
    this.state = registerOutput<String>('state');
    this.stateReason = registerOutput<String>('stateReason');
    this.uid = registerOutput<String>('uid');
  }
}
