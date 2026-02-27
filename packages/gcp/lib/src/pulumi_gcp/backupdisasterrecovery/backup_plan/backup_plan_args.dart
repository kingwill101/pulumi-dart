// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../backup_plan_backup_rule/backup_plan_backup_rule.dart';

/// The set of arguments for BackupPlan.
class BackupPlanArgs {
  /// The ID of the backup plan
  final pulumi.Input<String> backupPlanId;

  /// The backup rules for this `BackupPlan`. There must be at least one `BackupRule` message.
  /// Structure is documented below.
  final pulumi.Input<List<BackupPlanBackupRule>> backupRules;

  /// Backup vault where the backups gets stored using this Backup plan.
  final pulumi.Input<String> backupVault;

  /// The description allows for additional details about `BackupPlan` and its use cases to be provided.
  final pulumi.Input<String>? description;

  /// The location for the backup plan
  final pulumi.Input<String> location;

  /// This is only applicable for CloudSql resource. Days for which logs will be stored. This value should be greater than or equal to minimum enforced log retention duration of the backup vault.
  final pulumi.Input<int>? logRetentionDays;

  /// The maximum number of days for which an on-demand backup taken with custom retention can be retained.
  final pulumi.Input<int>? maxCustomOnDemandRetentionDays;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The resource type to which the `BackupPlan` will be applied.
  /// Examples include, "compute.googleapis.com/Instance", "compute.googleapis.com/Disk", "sqladmin.googleapis.com/Instance" and "storage.googleapis.com/Bucket".
  final pulumi.Input<String> resourceType;

  BackupPlanArgs({
    required this.backupPlanId,
    required this.backupRules,
    required this.backupVault,
    this.description,
    required this.location,
    this.logRetentionDays,
    this.maxCustomOnDemandRetentionDays,
    this.project,
    required this.resourceType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backupPlanId'] = backupPlanId;
    map['backupRules'] = pulumi.Input.mapInputValue<List<BackupPlanBackupRule>,
            List<Map<String, dynamic>>>(
        backupRules,
        (value) =>
            pulumi.Input.encodeList<BackupPlanBackupRule, Map<String, dynamic>>(
                value, (value) => value.toMap()));
    map['backupVault'] = backupVault;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['location'] = location;
    final logRetentionDaysValue = logRetentionDays;
    if (logRetentionDaysValue != null) {
      map['logRetentionDays'] = logRetentionDaysValue;
    }
    final maxCustomOnDemandRetentionDaysValue = maxCustomOnDemandRetentionDays;
    if (maxCustomOnDemandRetentionDaysValue != null) {
      map['maxCustomOnDemandRetentionDays'] =
          maxCustomOnDemandRetentionDaysValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['resourceType'] = resourceType;
    return map;
  }

  factory BackupPlanArgs.fromMap(Map<String, dynamic> map) {
    return BackupPlanArgs(
      backupPlanId: pulumi.Input.asInput<String>(map['backupPlanId']),
      backupRules:
          pulumi.Input.asInput<List<BackupPlanBackupRule>>(map['backupRules']),
      backupVault: pulumi.Input.asInput<String>(map['backupVault']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      location: pulumi.Input.asInput<String>(map['location']),
      logRetentionDays:
          pulumi.Input.asOptionalInput<int>(map['logRetentionDays']),
      maxCustomOnDemandRetentionDays: pulumi.Input.asOptionalInput<int>(
          map['maxCustomOnDemandRetentionDays']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      resourceType: pulumi.Input.asInput<String>(map['resourceType']),
    );
  }
}
