// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_gkebackup_v1_backup_args_doc}
/// The set of arguments for Backup.
/// {@endtemplate}
/// {@macro pulumi_gkebackup_v1_backup_args_doc}
class BackupArgs {
  /// Optional. The client-provided short name for the Backup resource. This name must: - be between 1 and 63 characters long (inclusive) - consist of only lower-case ASCII letters, numbers, and dashes - start with a lower-case letter - end with a lower-case letter or number - be unique within the set of Backups in this BackupPlan
  final pulumi.Input<String>? backupId;
  final pulumi.Input<String> backupPlanId;

  /// Optional. Minimum age for this Backup (in days). If this field is set to a non-zero value, the Backup will be "locked" against deletion (either manual or automatic deletion) for the number of days provided (measured from the creation time of the Backup). MUST be an integer value between 0-90 (inclusive). Defaults to parent BackupPlan's backup_delete_lock_days setting and may only be increased (either at creation time or in a subsequent update).
  final pulumi.Input<int>? deleteLockDays;

  /// Optional. User specified descriptive string for this Backup.
  final pulumi.Input<String>? description;

  /// Optional. A set of custom labels supplied by user.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;
  final pulumi.Input<String>? project;

  /// Optional. The age (in days) after which this Backup will be automatically deleted. Must be an integer value >= 0: - If 0, no automatic deletion will occur for this Backup. - If not 0, this must be >= delete_lock_days and <= 365. Once a Backup is created, this value may only be increased. Defaults to the parent BackupPlan's backup_retain_days value.
  final pulumi.Input<int>? retainDays;

  /// Creates a new [BackupArgs].
  /// [backupId] Optional. The client-provided short name for the Backup resource. This name must: - be between 1 and 63 characters long (inclusive) - consist of only lower-case ASCII letters, numbers, and dashes - start with a lower-case letter - end with a lower-case letter or number - be unique within the set of Backups in this BackupPlan
  /// [backupPlanId] Required.
  /// [deleteLockDays] Optional. Minimum age for this Backup (in days). If this field is set to a non-zero value, the Backup will be "locked" against deletion (either manual or automatic deletion) for the number of days provided (measured from the creation time of the Backup). MUST be an integer value between 0-90 (inclusive). Defaults to parent BackupPlan's backup_delete_lock_days setting and may only be increased (either at creation time or in a subsequent update).
  /// [description] Optional. User specified descriptive string for this Backup.
  /// [labels] Optional. A set of custom labels supplied by user.
  /// [location] Optional.
  /// [project] Optional.
  /// [retainDays] Optional. The age (in days) after which this Backup will be automatically deleted. Must be an integer value >= 0: - If 0, no automatic deletion will occur for this Backup. - If not 0, this must be >= delete_lock_days and <= 365. Once a Backup is created, this value may only be increased. Defaults to the parent BackupPlan's backup_retain_days value.
  BackupArgs({
    String? backupId,
    required String backupPlanId,
    int? deleteLockDays,
    String? description,
    Map<String, String>? labels,
    String? location,
    String? project,
    int? retainDays,
  }) : backupId = pulumi.Input.asOptionalInput<String>(backupId),
       backupPlanId = pulumi.Input.asInput<String>(backupPlanId),
       deleteLockDays = pulumi.Input.asOptionalInput<int>(deleteLockDays),
       description = pulumi.Input.asOptionalInput<String>(description),
       labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
       location = pulumi.Input.asOptionalInput<String>(location),
       project = pulumi.Input.asOptionalInput<String>(project),
       retainDays = pulumi.Input.asOptionalInput<int>(retainDays);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupId': ?backupId,
      'backupPlanId': backupPlanId,
      'deleteLockDays': ?deleteLockDays,
      'description': ?description,
      'labels': ?labels,
      'location': ?location,
      'project': ?project,
      'retainDays': ?retainDays,
    };
  }

  factory BackupArgs.fromMap(Map<String, dynamic> map) {
    return BackupArgs(
      backupId: map['backupId'] == null ? null : map['backupId'] as String,
      backupPlanId: map['backupPlanId'] as String,
      deleteLockDays: map['deleteLockDays'] == null
          ? null
          : map['deleteLockDays'] as int,
      description: map['description'] == null
          ? null
          : map['description'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      retainDays: map['retainDays'] == null ? null : map['retainDays'] as int,
    );
  }
}
