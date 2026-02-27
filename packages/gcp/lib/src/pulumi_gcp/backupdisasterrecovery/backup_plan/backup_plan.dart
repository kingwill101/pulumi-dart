import 'package:pulumi/pulumi.dart';
import '../backup_plan_backup_rule/backup_plan_backup_rule.dart';
import 'backup_plan_args.dart';

/// A backup plan defines when and how to back up a resource, including the backup's schedule, retention, and location.
///
///
/// To get more information about BackupPlan, see:
///
/// * [API documentation](https://cloud.google.com/backup-disaster-recovery/docs/reference/rest)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/backup-disaster-recovery/docs)
///
/// ## Example Usage
///
/// ### Backup Dr Backup Plan Simple
///
///
///
/// ### Backup Dr Backup Plan For Disk Resource
///
///
///
/// ### Backup Dr Backup Plan For Csql Resource
///
///
///
///
/// ## Import
///
/// BackupPlan can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/backupPlans/{{backup_plan_id}}`
///
/// * `{{project}}/{{location}}/{{backup_plan_id}}`
///
/// * `{{location}}/{{backup_plan_id}}`
///
/// When using the `pulumi import` command, BackupPlan can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:backupdisasterrecovery/backupPlan:BackupPlan default projects/{{project}}/locations/{{location}}/backupPlans/{{backup_plan_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:backupdisasterrecovery/backupPlan:BackupPlan default {{project}}/{{location}}/{{backup_plan_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:backupdisasterrecovery/backupPlan:BackupPlan default {{location}}/{{backup_plan_id}}
/// ```
class BackupPlan extends CustomResource {
  /// The ID of the backup plan
  late final Output<String> backupPlanId;

  /// The backup rules for this `BackupPlan`. There must be at least one `BackupRule` message.
  /// Structure is documented below.
  late final Output<List<BackupPlanBackupRule>> backupRules;

  /// Backup vault where the backups gets stored using this Backup plan.
  late final Output<String> backupVault;

  /// The Google Cloud Platform Service Account to be used by the BackupVault for taking backups.
  late final Output<String> backupVaultServiceAccount;

  /// When the `BackupPlan` was created.
  late final Output<String> createTime;

  /// The description allows for additional details about `BackupPlan` and its use cases to be provided.
  late final Output<String?> description;

  /// The location for the backup plan
  late final Output<String> location;

  /// This is only applicable for CloudSql resource. Days for which logs will be stored. This value should be greater than or equal to minimum enforced log retention duration of the backup vault.
  late final Output<int?> logRetentionDays;

  /// The maximum number of days for which an on-demand backup taken with custom retention can be retained.
  late final Output<int?> maxCustomOnDemandRetentionDays;

  /// The name of backup plan resource created
  late final Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The resource type to which the `BackupPlan` will be applied.
  /// Examples include, "compute.googleapis.com/Instance", "compute.googleapis.com/Disk", "sqladmin.googleapis.com/Instance" and "storage.googleapis.com/Bucket".
  late final Output<String> resourceType;

  /// The list of all resource types to which the `BackupPlan` can be applied.
  late final Output<List<String>> supportedResourceTypes;

  /// When the `BackupPlan` was last updated.
  late final Output<String> updateTime;

  BackupPlan(
    String name, {
    BackupPlanArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:backupdisasterrecovery/backupPlan:BackupPlan',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.backupPlanId = registerOutput<String>('backupPlanId');
    this.backupRules =
        registerOutput<List<BackupPlanBackupRule>>('backupRules');
    this.backupVault = registerOutput<String>('backupVault');
    this.backupVaultServiceAccount =
        registerOutput<String>('backupVaultServiceAccount');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.location = registerOutput<String>('location');
    this.logRetentionDays = registerOutput<int?>('logRetentionDays');
    this.maxCustomOnDemandRetentionDays =
        registerOutput<int?>('maxCustomOnDemandRetentionDays');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.resourceType = registerOutput<String>('resourceType');
    this.supportedResourceTypes =
        registerOutput<List<String>>('supportedResourceTypes');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
