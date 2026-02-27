// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;

/// The set of arguments for Backup.
class BackupArgs7 {
  /// Optional. The client-provided short name for the Backup resource. This name must: - be between 1 and 63 characters long (inclusive) - consist of only lower-case ASCII letters, numbers, and dashes - start with a lower-case letter - end with a lower-case letter or number - be unique within the set of Backups in this BackupPlan
  final Input<String>? backupId;
  final Input<String> backupPlanId;

  /// Optional. Minimum age for this Backup (in days). If this field is set to a non-zero value, the Backup will be "locked" against deletion (either manual or automatic deletion) for the number of days provided (measured from the creation time of the Backup). MUST be an integer value between 0-90 (inclusive). Defaults to parent BackupPlan's backup_delete_lock_days setting and may only be increased (either at creation time or in a subsequent update).
  final Input<int>? deleteLockDays;

  /// Optional. User specified descriptive string for this Backup.
  final Input<String>? description;

  /// Optional. A set of custom labels supplied by user.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;
  final Input<String>? project;

  /// Optional. The age (in days) after which this Backup will be automatically deleted. Must be an integer value >= 0: - If 0, no automatic deletion will occur for this Backup. - If not 0, this must be >= delete_lock_days and <= 365. Once a Backup is created, this value may only be increased. Defaults to the parent BackupPlan's backup_retain_days value.
  final Input<int>? retainDays;

  BackupArgs7({
    this.backupId,
    required this.backupPlanId,
    this.deleteLockDays,
    this.description,
    this.labels,
    this.location,
    this.project,
    this.retainDays,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final backupIdValue = backupId;
    if (backupIdValue != null) {
      map['backupId'] = backupIdValue;
    }
    map['backupPlanId'] = backupPlanId;
    final deleteLockDaysValue = deleteLockDays;
    if (deleteLockDaysValue != null) {
      map['deleteLockDays'] = deleteLockDaysValue;
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
    final retainDaysValue = retainDays;
    if (retainDaysValue != null) {
      map['retainDays'] = retainDaysValue;
    }
    return map;
  }

  factory BackupArgs7.fromMap(Map<String, dynamic> map) {
    return BackupArgs7(
      backupId: Input.asOptionalInput<String>(map['backupId']),
      backupPlanId: Input.asInput<String>(map['backupPlanId']),
      deleteLockDays: Input.asOptionalInput<int>(map['deleteLockDays']),
      description: Input.asOptionalInput<String>(map['description']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      project: Input.asOptionalInput<String>(map['project']),
      retainDays: Input.asOptionalInput<int>(map['retainDays']),
    );
  }
}
