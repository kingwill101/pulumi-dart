// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../backup_plan_backup_config/backup_plan_backup_config.dart';
import '../backup_plan_backup_schedule/backup_plan_backup_schedule.dart';
import '../backup_plan_retention_policy/backup_plan_retention_policy.dart';

/// The set of arguments for BackupPlan.
class BackupPlanArgs2 {
  /// Defines the configuration of Backups created via this BackupPlan.
  /// Structure is documented below.
  final Input<BackupPlanBackupConfig>? backupConfig;

  /// Defines a schedule for automatic Backup creation via this BackupPlan.
  /// Structure is documented below.
  final Input<BackupPlanBackupSchedule>? backupSchedule;

  /// The source cluster from which Backups will be created via this BackupPlan.
  final Input<String> cluster;

  /// This flag indicates whether this BackupPlan has been deactivated.
  /// Setting this field to True locks the BackupPlan such that no further updates will be allowed
  /// (except deletes), including the deactivated field itself. It also prevents any new Backups
  /// from being created via this BackupPlan (including scheduled Backups).
  final Input<bool>? deactivated;

  /// User specified descriptive string for this BackupPlan.
  final Input<String>? description;

  /// Description: A set of custom labels supplied by the user.
  /// A list of key->value pairs.
  /// Example: { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The region of the Backup Plan.
  final Input<String> location;

  /// The full name of the BackupPlan Resource.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// RetentionPolicy governs lifecycle of Backups created under this plan.
  /// Structure is documented below.
  final Input<BackupPlanRetentionPolicy>? retentionPolicy;

  BackupPlanArgs2({
    this.backupConfig,
    this.backupSchedule,
    required this.cluster,
    this.deactivated,
    this.description,
    this.labels,
    required this.location,
    this.name,
    this.project,
    this.retentionPolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final backupConfigValue = backupConfig;
    if (backupConfigValue != null) {
      map['backupConfig'] = Input.mapOptionalInputValue<BackupPlanBackupConfig,
          Map<String, dynamic>>(backupConfigValue, (value) => value.toMap());
    }
    final backupScheduleValue = backupSchedule;
    if (backupScheduleValue != null) {
      map['backupSchedule'] = Input.mapOptionalInputValue<
          BackupPlanBackupSchedule,
          Map<String, dynamic>>(backupScheduleValue, (value) => value.toMap());
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
    map['location'] = location;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final retentionPolicyValue = retentionPolicy;
    if (retentionPolicyValue != null) {
      map['retentionPolicy'] = Input.mapOptionalInputValue<
          BackupPlanRetentionPolicy,
          Map<String, dynamic>>(retentionPolicyValue, (value) => value.toMap());
    }
    return map;
  }

  factory BackupPlanArgs2.fromMap(Map<String, dynamic> map) {
    return BackupPlanArgs2(
      backupConfig:
          Input.asOptionalInput<BackupPlanBackupConfig>(map['backupConfig']),
      backupSchedule: Input.asOptionalInput<BackupPlanBackupSchedule>(
          map['backupSchedule']),
      cluster: Input.asInput<String>(map['cluster']),
      deactivated: Input.asOptionalInput<bool>(map['deactivated']),
      description: Input.asOptionalInput<String>(map['description']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      retentionPolicy: Input.asOptionalInput<BackupPlanRetentionPolicy>(
          map['retentionPolicy']),
    );
  }
}
