// ignore_for_file: unused_element, unnecessary_cast

class VolumeBackupConfig {
  /// Specify a single backup policy ID for scheduled backups. Format: `projects/{{projectId}}/locations/{{location}}/backupPolicies/{{backupPolicyName}}`
  final List<String>? backupPolicies;

  /// ID of the backup vault to use. A backup vault is reqired to create manual or scheduled backups.
  /// Format: `projects/{{projectId}}/locations/{{location}}/backupVaults/{{backupVaultName}}`
  final String? backupVault;

  /// When set to true, scheduled backup is enabled on the volume. Omit if no backup_policy is specified.
  final bool? scheduledBackupEnabled;

  /// Creates a new [VolumeBackupConfig].
  /// [backupPolicies] Specify a single backup policy ID for scheduled backups. Format: `projects/{{projectId}}/locations/{{location}}/backupPolicies/{{backupPolicyName}}`
  /// [backupVault] ID of the backup vault to use. A backup vault is reqired to create manual or scheduled backups.
  /// [scheduledBackupEnabled] When set to true, scheduled backup is enabled on the volume. Omit if no backup_policy is specified.
  VolumeBackupConfig({
    this.backupPolicies,
    this.backupVault,
    this.scheduledBackupEnabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final backupPoliciesValue = backupPolicies;
    if (backupPoliciesValue != null) {
      map['backupPolicies'] = backupPoliciesValue;
    }
    final backupVaultValue = backupVault;
    if (backupVaultValue != null) {
      map['backupVault'] = backupVaultValue;
    }
    final scheduledBackupEnabledValue = scheduledBackupEnabled;
    if (scheduledBackupEnabledValue != null) {
      map['scheduledBackupEnabled'] = scheduledBackupEnabledValue;
    }
    return map;
  }

  factory VolumeBackupConfig.fromMap(Map<String, dynamic> map) {
    return VolumeBackupConfig(
      backupPolicies: map['backupPolicies'] == null
          ? null
          : (map['backupPolicies'] as List).cast<String>(),
      backupVault:
          map['backupVault'] == null ? null : map['backupVault'] as String,
      scheduledBackupEnabled: map['scheduledBackupEnabled'] == null
          ? null
          : map['scheduledBackupEnabled'] as bool,
    );
  }
}
