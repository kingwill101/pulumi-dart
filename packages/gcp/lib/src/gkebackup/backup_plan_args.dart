// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_plan_backup_config.dart';
import 'backup_plan_backup_schedule.dart';
import 'backup_plan_retention_policy.dart';

/// {@template pulumi_gkebackup_backup_plan_backup_plan_args_doc}
/// The set of arguments for BackupPlan.
/// {@endtemplate}
/// {@macro pulumi_gkebackup_backup_plan_backup_plan_args_doc}
class BackupPlanArgs {
  /// Defines the configuration of Backups created via this BackupPlan.
  /// Structure is documented below.
  final pulumi.Input<BackupPlanBackupConfig>? backupConfig;

  /// Defines a schedule for automatic Backup creation via this BackupPlan.
  /// Structure is documented below.
  final pulumi.Input<BackupPlanBackupSchedule>? backupSchedule;

  /// The source cluster from which Backups will be created via this BackupPlan.
  final pulumi.Input<String> cluster;

  /// This flag indicates whether this BackupPlan has been deactivated.
  /// Setting this field to True locks the BackupPlan such that no further updates will be allowed
  /// (except deletes), including the deactivated field itself. It also prevents any new Backups
  /// from being created via this BackupPlan (including scheduled Backups).
  final pulumi.Input<bool>? deactivated;

  /// User specified descriptive string for this BackupPlan.
  final pulumi.Input<String>? description;

  /// Description: A set of custom labels supplied by the user.
  /// A list of key->value pairs.
  /// Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The region of the Backup Plan.
  final pulumi.Input<String> location;

  /// The full name of the BackupPlan Resource.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// RetentionPolicy governs lifecycle of Backups created under this plan.
  /// Structure is documented below.
  final pulumi.Input<BackupPlanRetentionPolicy>? retentionPolicy;

  /// Creates a new [BackupPlanArgs].
  /// [backupConfig] Defines the configuration of Backups created via this BackupPlan.
  /// [backupSchedule] Defines a schedule for automatic Backup creation via this BackupPlan.
  /// [cluster] The source cluster from which Backups will be created via this BackupPlan.
  /// [deactivated] This flag indicates whether this BackupPlan has been deactivated.
  /// [description] User specified descriptive string for this BackupPlan.
  /// [labels] Description: A set of custom labels supplied by the user.
  /// [location] The region of the Backup Plan.
  /// [name] The full name of the BackupPlan Resource.
  /// [project] The ID of the project in which the resource belongs.
  /// [retentionPolicy] RetentionPolicy governs lifecycle of Backups created under this plan.
  BackupPlanArgs({
    BackupPlanBackupConfig? backupConfig,
    BackupPlanBackupSchedule? backupSchedule,
    required String cluster,
    bool? deactivated,
    String? description,
    Map<String, String>? labels,
    required String location,
    String? name,
    String? project,
    BackupPlanRetentionPolicy? retentionPolicy,
  }) : backupConfig = pulumi.Input.asOptionalInput<BackupPlanBackupConfig>(
         backupConfig,
       ),
       backupSchedule = pulumi.Input.asOptionalInput<BackupPlanBackupSchedule>(
         backupSchedule,
       ),
       cluster = pulumi.Input.asInput<String>(cluster),
       deactivated = pulumi.Input.asOptionalInput<bool>(deactivated),
       description = pulumi.Input.asOptionalInput<String>(description),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       location = pulumi.Input.asInput<String>(location),
       name = pulumi.Input.asOptionalInput<String>(name),
       project = pulumi.Input.asOptionalInput<String>(project),
       retentionPolicy = pulumi
           .Input.asOptionalInput<BackupPlanRetentionPolicy>(retentionPolicy);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupConfig':
          ?pulumi.Input.mapOptionalInputValue<
            BackupPlanBackupConfig,
            Map<String, dynamic>
          >(backupConfig, (value) => value.toMap()),
      'backupSchedule':
          ?pulumi.Input.mapOptionalInputValue<
            BackupPlanBackupSchedule,
            Map<String, dynamic>
          >(backupSchedule, (value) => value.toMap()),
      'cluster': cluster,
      'deactivated': ?deactivated,
      'description': ?description,
      'labels': ?labels,
      'location': location,
      'name': ?name,
      'project': ?project,
      'retentionPolicy':
          ?pulumi.Input.mapOptionalInputValue<
            BackupPlanRetentionPolicy,
            Map<String, dynamic>
          >(retentionPolicy, (value) => value.toMap()),
    };
  }

  factory BackupPlanArgs.fromMap(Map<String, dynamic> map) {
    return BackupPlanArgs(
      backupConfig: map['backupConfig'] == null
          ? null
          : BackupPlanBackupConfig.fromMap(
              (map['backupConfig'] as Map).cast<String, dynamic>(),
            ),
      backupSchedule: map['backupSchedule'] == null
          ? null
          : BackupPlanBackupSchedule.fromMap(
              (map['backupSchedule'] as Map).cast<String, dynamic>(),
            ),
      cluster: map['cluster'] as String,
      deactivated: map['deactivated'] == null
          ? null
          : map['deactivated'] as bool,
      description: map['description'] == null
          ? null
          : map['description'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      retentionPolicy: map['retentionPolicy'] == null
          ? null
          : BackupPlanRetentionPolicy.fromMap(
              (map['retentionPolicy'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
