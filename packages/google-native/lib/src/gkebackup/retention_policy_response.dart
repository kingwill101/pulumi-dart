// ignore_for_file: unused_element, unnecessary_cast

/// RetentionPolicy defines a Backup retention policy for a BackupPlan.
class RetentionPolicyResponse {
  /// Optional. Minimum age for Backups created via this BackupPlan (in days). This field MUST be an integer value between 0-90 (inclusive). A Backup created under this BackupPlan will NOT be deletable until it reaches Backup's (create_time + backup_delete_lock_days). Updating this field of a BackupPlan does NOT affect existing Backups under it. Backups created AFTER a successful update will inherit the new value. Default: 0 (no delete blocking)
  final int backupDeleteLockDays;

  /// Optional. The default maximum age of a Backup created via this BackupPlan. This field MUST be an integer value >= 0 and <= 365. If specified, a Backup created under this BackupPlan will be automatically deleted after its age reaches (create_time + backup_retain_days). If not specified, Backups created under this BackupPlan will NOT be subject to automatic deletion. Updating this field does NOT affect existing Backups under it. Backups created AFTER a successful update will automatically pick up the new value. NOTE: backup_retain_days must be >= backup_delete_lock_days. If cron_schedule is defined, then this must be <= 360 * the creation interval. If rpo_config is defined, then this must be <= 360 * target_rpo_minutes / (1440minutes/day). Default: 0 (no automatic deletion)
  final int backupRetainDays;

  /// Optional. This flag denotes whether the retention policy of this BackupPlan is locked. If set to True, no further update is allowed on this policy, including the `locked` field itself. Default: False
  final bool locked;

  /// Creates a new [RetentionPolicyResponse].
  /// [backupDeleteLockDays] Optional. Minimum age for Backups created via this BackupPlan (in days). This field MUST be an integer value between 0-90 (inclusive). A Backup created under this BackupPlan will NOT be deletable until it reaches Backup's (create_time + backup_delete_lock_days). Updating this field of a BackupPlan does NOT affect existing Backups under it. Backups created AFTER a successful update will inherit the new value. Default: 0 (no delete blocking)
  /// [backupRetainDays] Optional. The default maximum age of a Backup created via this BackupPlan. This field MUST be an integer value >= 0 and <= 365. If specified, a Backup created under this BackupPlan will be automatically deleted after its age reaches (create_time + backup_retain_days). If not specified, Backups created under this BackupPlan will NOT be subject to automatic deletion. Updating this field does NOT affect existing Backups under it. Backups created AFTER a successful update will automatically pick up the new value. NOTE: backup_retain_days must be >= backup_delete_lock_days. If cron_schedule is defined, then this must be <= 360 * the creation interval. If rpo_config is defined, then this must be <= 360 * target_rpo_minutes / (1440minutes/day). Default: 0 (no automatic deletion)
  /// [locked] Optional. This flag denotes whether the retention policy of this BackupPlan is locked. If set to True, no further update is allowed on this policy, including the `locked` field itself. Default: False
  RetentionPolicyResponse({
    required this.backupDeleteLockDays,
    required this.backupRetainDays,
    required this.locked,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupDeleteLockDays': backupDeleteLockDays,
      'backupRetainDays': backupRetainDays,
      'locked': locked,
    };
  }

  factory RetentionPolicyResponse.fromMap(Map<String, dynamic> map) {
    return RetentionPolicyResponse(
      backupDeleteLockDays: map['backupDeleteLockDays'] as int,
      backupRetainDays: map['backupRetainDays'] as int,
      locked: map['locked'] as bool,
    );
  }
}
