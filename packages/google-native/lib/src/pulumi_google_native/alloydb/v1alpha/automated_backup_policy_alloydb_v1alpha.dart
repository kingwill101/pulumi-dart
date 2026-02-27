// ignore_for_file: unused_element, unnecessary_cast

import 'encryption_config_alloydb_v1alpha.dart';
import 'quantity_based_retention_alloydb_v1alpha.dart';
import 'time_based_retention_alloydb_v1alpha.dart';
import 'weekly_schedule_alloydb_v1alpha.dart';

/// Message describing the user-specified automated backup policy. All fields in the automated backup policy are optional. Defaults for each field are provided if they are not set.
class AutomatedBackupPolicyAlloydbV1alpha {
  /// The length of the time window during which a backup can be taken. If a backup does not succeed within this time window, it will be canceled and considered failed. The backup window must be at least 5 minutes long. There is no upper bound on the window. If not set, it defaults to 1 hour.
  final String? backupWindow;

  /// Whether automated automated backups are enabled. If not set, defaults to true.
  final bool? enabled;

  /// Optional. The encryption config can be specified to encrypt the backups with a customer-managed encryption key (CMEK). When this field is not specified, the backup will then use default encryption scheme to protect the user data.
  final EncryptionConfigAlloydbV1alpha? encryptionConfig;

  /// Labels to apply to backups created using this configuration.
  final Map<String, String>? labels;

  /// The location where the backup will be stored. Currently, the only supported option is to store the backup in the same region as the cluster. If empty, defaults to the region of the cluster.
  final String? location;

  /// Quantity-based Backup retention policy to retain recent backups.
  final QuantityBasedRetentionAlloydbV1alpha? quantityBasedRetention;

  /// Time-based Backup retention policy.
  final TimeBasedRetentionAlloydbV1alpha? timeBasedRetention;

  /// Weekly schedule for the Backup.
  final WeeklyScheduleAlloydbV1alpha? weeklySchedule;

  AutomatedBackupPolicyAlloydbV1alpha({
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

  factory AutomatedBackupPolicyAlloydbV1alpha.fromMap(
      Map<String, dynamic> map) {
    return AutomatedBackupPolicyAlloydbV1alpha(
      backupWindow:
          map['backupWindow'] == null ? null : map['backupWindow'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      encryptionConfig: map['encryptionConfig'] == null
          ? null
          : EncryptionConfigAlloydbV1alpha.fromMap(
              (map['encryptionConfig'] as Map).cast<String, dynamic>()),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      quantityBasedRetention: map['quantityBasedRetention'] == null
          ? null
          : QuantityBasedRetentionAlloydbV1alpha.fromMap(
              (map['quantityBasedRetention'] as Map).cast<String, dynamic>()),
      timeBasedRetention: map['timeBasedRetention'] == null
          ? null
          : TimeBasedRetentionAlloydbV1alpha.fromMap(
              (map['timeBasedRetention'] as Map).cast<String, dynamic>()),
      weeklySchedule: map['weeklySchedule'] == null
          ? null
          : WeeklyScheduleAlloydbV1alpha.fromMap(
              (map['weeklySchedule'] as Map).cast<String, dynamic>()),
    );
  }
}
