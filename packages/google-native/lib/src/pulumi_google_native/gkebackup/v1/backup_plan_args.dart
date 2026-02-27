// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'backup_config.dart';
import 'retention_policy.dart';
import 'schedule.dart';

/// The set of arguments for BackupPlan.
class BackupPlanArgs {
  /// Optional. Defines the configuration of Backups created via this BackupPlan.
  final Input<BackupConfig>? backupConfig;

  /// Required. The client-provided short name for the BackupPlan resource. This name must: - be between 1 and 63 characters long (inclusive) - consist of only lower-case ASCII letters, numbers, and dashes - start with a lower-case letter - end with a lower-case letter or number - be unique within the set of BackupPlans in this location
  final Input<String> backupPlanId;

  /// Optional. Defines a schedule for automatic Backup creation via this BackupPlan.
  final Input<Schedule>? backupSchedule;

  /// Immutable. The source cluster from which Backups will be created via this BackupPlan. Valid formats: - `projects/*/locations/*/clusters/*` - `projects/*/zones/*/clusters/*`
  final Input<String> cluster;

  /// Optional. This flag indicates whether this BackupPlan has been deactivated. Setting this field to True locks the BackupPlan such that no further updates will be allowed (except deletes), including the deactivated field itself. It also prevents any new Backups from being created via this BackupPlan (including scheduled Backups). Default: False
  final Input<bool>? deactivated;

  /// Optional. User specified descriptive string for this BackupPlan.
  final Input<String>? description;

  /// Optional. A set of custom labels supplied by user.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;
  final Input<String>? project;

  /// Optional. RetentionPolicy governs lifecycle of Backups created under this plan.
  final Input<RetentionPolicy>? retentionPolicy;

  BackupPlanArgs({
    this.backupConfig,
    required this.backupPlanId,
    this.backupSchedule,
    required this.cluster,
    this.deactivated,
    this.description,
    this.labels,
    this.location,
    this.project,
    this.retentionPolicy,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final backupConfigValue = backupConfig;
    if (backupConfigValue != null) {
      map['backupConfig'] =
          Input.mapOptionalInputValue<BackupConfig, Map<String, dynamic>>(
              backupConfigValue, (value) => value.toMap());
    }
    map['backupPlanId'] = backupPlanId;
    final backupScheduleValue = backupSchedule;
    if (backupScheduleValue != null) {
      map['backupSchedule'] =
          Input.mapOptionalInputValue<Schedule, Map<String, dynamic>>(
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
      map['retentionPolicy'] =
          Input.mapOptionalInputValue<RetentionPolicy, Map<String, dynamic>>(
              retentionPolicyValue, (value) => value.toMap());
    }
    return map;
  }

  factory BackupPlanArgs.fromMap(Map<String, dynamic> map) {
    return BackupPlanArgs(
      backupConfig: Input.asOptionalInput<BackupConfig>(map['backupConfig']),
      backupPlanId: Input.asInput<String>(map['backupPlanId']),
      backupSchedule: Input.asOptionalInput<Schedule>(map['backupSchedule']),
      cluster: Input.asInput<String>(map['cluster']),
      deactivated: Input.asOptionalInput<bool>(map['deactivated']),
      description: Input.asOptionalInput<String>(map['description']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      retentionPolicy:
          Input.asOptionalInput<RetentionPolicy>(map['retentionPolicy']),
    );
  }
}
