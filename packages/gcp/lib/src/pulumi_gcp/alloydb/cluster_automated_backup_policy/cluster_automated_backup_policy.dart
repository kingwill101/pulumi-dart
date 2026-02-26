// ignore_for_file: unused_element, unnecessary_cast

import '../cluster_automated_backup_policy_encryption_config/cluster_automated_backup_policy_encryption_config.dart';
import '../cluster_automated_backup_policy_quantity_based_retention/cluster_automated_backup_policy_quantity_based_retention.dart';
import '../cluster_automated_backup_policy_time_based_retention/cluster_automated_backup_policy_time_based_retention.dart';
import '../cluster_automated_backup_policy_weekly_schedule/cluster_automated_backup_policy_weekly_schedule.dart';

class ClusterAutomatedBackupPolicy {
  /// The length of the time window during which a backup can be taken. If a backup does not succeed within this time window, it will be canceled and considered failed.
  /// The backup window must be at least 5 minutes long. There is no upper bound on the window. If not set, it will default to 1 hour.
  /// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  final String? backupWindow;

  /// Whether automated backups are enabled.
  final bool? enabled;

  /// EncryptionConfig describes the encryption config of a cluster or a backup that is encrypted with a CMEK (customer-managed encryption key).
  /// Structure is documented below.
  final ClusterAutomatedBackupPolicyEncryptionConfig? encryptionConfig;

  /// Labels to apply to backups created using this configuration.
  final Map<String, String>? labels;

  /// The location where the backup will be stored. Currently, the only supported option is to store the backup in the same region as the cluster.
  final String? location;

  /// Quantity-based Backup retention policy to retain recent backups. Conflicts with 'time_based_retention', both can't be set together.
  /// Structure is documented below.
  final ClusterAutomatedBackupPolicyQuantityBasedRetention?
      quantityBasedRetention;

  /// Time-based Backup retention policy. Conflicts with 'quantity_based_retention', both can't be set together.
  /// Structure is documented below.
  final ClusterAutomatedBackupPolicyTimeBasedRetention? timeBasedRetention;

  /// Weekly schedule for the Backup.
  /// Structure is documented below.
  final ClusterAutomatedBackupPolicyWeeklySchedule? weeklySchedule;

  ClusterAutomatedBackupPolicy({
    this.backupWindow,
    this.enabled,
    this.encryptionConfig,
    this.labels,
    this.location,
    this.quantityBasedRetention,
    this.timeBasedRetention,
    this.weeklySchedule,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final backupWindowValue = backupWindow;
    if (backupWindowValue != null) {
      map['backupWindow'] = backupWindowValue;
    }
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final encryptionConfigValue = encryptionConfig;
    if (encryptionConfigValue != null) {
      map['encryptionConfig'] = encryptionConfigValue.toMap();
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final quantityBasedRetentionValue = quantityBasedRetention;
    if (quantityBasedRetentionValue != null) {
      map['quantityBasedRetention'] = quantityBasedRetentionValue.toMap();
    }
    final timeBasedRetentionValue = timeBasedRetention;
    if (timeBasedRetentionValue != null) {
      map['timeBasedRetention'] = timeBasedRetentionValue.toMap();
    }
    final weeklyScheduleValue = weeklySchedule;
    if (weeklyScheduleValue != null) {
      map['weeklySchedule'] = weeklyScheduleValue.toMap();
    }
    return map;
  }

  factory ClusterAutomatedBackupPolicy.fromMap(Map<String, dynamic> map) {
    return ClusterAutomatedBackupPolicy(
      backupWindow:
          map['backupWindow'] == null ? null : map['backupWindow'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      encryptionConfig: map['encryptionConfig'] == null
          ? null
          : ClusterAutomatedBackupPolicyEncryptionConfig.fromMap(
              (map['encryptionConfig'] as Map).cast<String, dynamic>()),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      quantityBasedRetention: map['quantityBasedRetention'] == null
          ? null
          : ClusterAutomatedBackupPolicyQuantityBasedRetention.fromMap(
              (map['quantityBasedRetention'] as Map).cast<String, dynamic>()),
      timeBasedRetention: map['timeBasedRetention'] == null
          ? null
          : ClusterAutomatedBackupPolicyTimeBasedRetention.fromMap(
              (map['timeBasedRetention'] as Map).cast<String, dynamic>()),
      weeklySchedule: map['weeklySchedule'] == null
          ? null
          : ClusterAutomatedBackupPolicyWeeklySchedule.fromMap(
              (map['weeklySchedule'] as Map).cast<String, dynamic>()),
    );
  }
}
