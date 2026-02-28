// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'backup_config.dart';
import 'retention_policy.dart';
import 'schedule.dart';

/// {@template pulumi_gkebackup_v1_backup_plan_args_doc}
/// The set of arguments for BackupPlan.
/// {@endtemplate}
/// {@macro pulumi_gkebackup_v1_backup_plan_args_doc}
class BackupPlanArgs {
  /// Optional. Defines the configuration of Backups created via this BackupPlan.
  final pulumi.Input<BackupConfig>? backupConfig;

  /// Required. The client-provided short name for the BackupPlan resource. This name must: - be between 1 and 63 characters long (inclusive) - consist of only lower-case ASCII letters, numbers, and dashes - start with a lower-case letter - end with a lower-case letter or number - be unique within the set of BackupPlans in this location
  final pulumi.Input<String> backupPlanId;

  /// Optional. Defines a schedule for automatic Backup creation via this BackupPlan.
  final pulumi.Input<Schedule>? backupSchedule;

  /// Immutable. The source cluster from which Backups will be created via this BackupPlan. Valid formats: - `projects/*/locations/*/clusters/*` - `projects/*/zones/*/clusters/*`
  final pulumi.Input<String> cluster;

  /// Optional. This flag indicates whether this BackupPlan has been deactivated. Setting this field to True locks the BackupPlan such that no further updates will be allowed (except deletes), including the deactivated field itself. It also prevents any new Backups from being created via this BackupPlan (including scheduled Backups). Default: False
  final pulumi.Input<bool>? deactivated;

  /// Optional. User specified descriptive string for this BackupPlan.
  final pulumi.Input<String>? description;

  /// Optional. A set of custom labels supplied by user.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// Optional. RetentionPolicy governs lifecycle of Backups created under this plan.
  final pulumi.Input<RetentionPolicy>? retentionPolicy;

  /// Creates a new [BackupPlanArgs].
  /// [backupConfig] Optional. Defines the configuration of Backups created via this BackupPlan.
  /// [backupPlanId] Required. The client-provided short name for the BackupPlan resource. This name must: - be between 1 and 63 characters long (inclusive) - consist of only lower-case ASCII letters, numbers, and dashes - start with a lower-case letter - end with a lower-case letter or number - be unique within the set of BackupPlans in this location
  /// [backupSchedule] Optional. Defines a schedule for automatic Backup creation via this BackupPlan.
  /// [cluster] Immutable. The source cluster from which Backups will be created via this BackupPlan. Valid formats: - `projects/*/locations/*/clusters/*` - `projects/*/zones/*/clusters/*`
  /// [deactivated] Optional. This flag indicates whether this BackupPlan has been deactivated. Setting this field to True locks the BackupPlan such that no further updates will be allowed (except deletes), including the deactivated field itself. It also prevents any new Backups from being created via this BackupPlan (including scheduled Backups). Default: False
  /// [description] Optional. User specified descriptive string for this BackupPlan.
  /// [labels] Optional. A set of custom labels supplied by user.
  /// [location] Optional.
  /// [project] Optional.
  /// [retentionPolicy] Optional. RetentionPolicy governs lifecycle of Backups created under this plan.
  BackupPlanArgs({
    BackupConfig? backupConfig,
    required String backupPlanId,
    Schedule? backupSchedule,
    required String cluster,
    bool? deactivated,
    String? description,
    Map<String, String>? labels,
    String? location,
    String? project,
    RetentionPolicy? retentionPolicy,
  })  : backupConfig = pulumi.Input.asOptionalInput<BackupConfig>(backupConfig),
        backupPlanId = pulumi.Input.asInput<String>(backupPlanId),
        backupSchedule = pulumi.Input.asOptionalInput<Schedule>(backupSchedule),
        cluster = pulumi.Input.asInput<String>(cluster),
        deactivated = pulumi.Input.asOptionalInput<bool>(deactivated),
        description = pulumi.Input.asOptionalInput<String>(description),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asOptionalInput<String>(location),
        project = pulumi.Input.asOptionalInput<String>(project),
        retentionPolicy =
            pulumi.Input.asOptionalInput<RetentionPolicy>(retentionPolicy);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final backupConfigValue = backupConfig;
    if (backupConfigValue != null) {
      map['backupConfig'] = pulumi.Input.mapOptionalInputValue<BackupConfig,
          Map<String, dynamic>>(backupConfigValue, (value) => value.toMap());
    }
    map['backupPlanId'] = backupPlanId;
    final backupScheduleValue = backupSchedule;
    if (backupScheduleValue != null) {
      map['backupSchedule'] =
          pulumi.Input.mapOptionalInputValue<Schedule, Map<String, dynamic>>(
              backupScheduleValue, (value) => value.toMap());
    }
    map['cluster'] = cluster;
    final deactivatedValue = deactivated;
    if (deactivatedValue != null) {
      map['deactivated'] = deactivatedValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final retentionPolicyValue = retentionPolicy;
    if (retentionPolicyValue != null) {
      map['retentionPolicy'] = pulumi.Input.mapOptionalInputValue<
          RetentionPolicy,
          Map<String, dynamic>>(retentionPolicyValue, (value) => value.toMap());
    }
    return map;
  }

  factory BackupPlanArgs.fromMap(Map<String, dynamic> map) {
    return BackupPlanArgs(
      backupConfig: map['backupConfig'] == null
          ? null
          : BackupConfig.fromMap(
              (map['backupConfig'] as Map).cast<String, dynamic>()),
      backupPlanId: map['backupPlanId'] as String,
      backupSchedule: map['backupSchedule'] == null
          ? null
          : Schedule.fromMap(
              (map['backupSchedule'] as Map).cast<String, dynamic>()),
      cluster: map['cluster'] as String,
      deactivated:
          map['deactivated'] == null ? null : map['deactivated'] as bool,
      description:
          map['description'] == null ? null : map['description'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      retentionPolicy: map['retentionPolicy'] == null
          ? null
          : RetentionPolicy.fromMap(
              (map['retentionPolicy'] as Map).cast<String, dynamic>()),
    );
  }
}
