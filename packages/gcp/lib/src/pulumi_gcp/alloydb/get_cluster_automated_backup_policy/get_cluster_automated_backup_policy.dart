// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_cluster_automated_backup_policy_encryption_config/get_cluster_automated_backup_policy_encryption_config.dart';
import '../get_cluster_automated_backup_policy_quantity_based_retention/get_cluster_automated_backup_policy_quantity_based_retention.dart';
import '../get_cluster_automated_backup_policy_time_based_retention/get_cluster_automated_backup_policy_time_based_retention.dart';
import '../get_cluster_automated_backup_policy_weekly_schedule/get_cluster_automated_backup_policy_weekly_schedule.dart';

class GetClusterAutomatedBackupPolicy {
  /// The length of the time window during which a backup can be taken. If a backup does not succeed within this time window, it will be canceled and considered failed.
  ///
  /// The backup window must be at least 5 minutes long. There is no upper bound on the window. If not set, it will default to 1 hour.
  ///
  /// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  final String backupWindow;

  /// Whether automated backups are enabled.
  final bool enabled;

  /// EncryptionConfig describes the encryption config of a cluster or a backup that is encrypted with a CMEK (customer-managed encryption key).
  final List<GetClusterAutomatedBackupPolicyEncryptionConfig> encryptionConfigs;

  /// Labels to apply to backups created using this configuration.
  final Map<String, String> labels;

  /// (optional)
  /// The canonical id of the location.If it is not provided, the provider project is used. For example: us-east1.
  final String location;

  /// Quantity-based Backup retention policy to retain recent backups. Conflicts with 'time_based_retention', both can't be set together.
  final List<GetClusterAutomatedBackupPolicyQuantityBasedRetention>
      quantityBasedRetentions;

  /// Time-based Backup retention policy. Conflicts with 'quantity_based_retention', both can't be set together.
  final List<GetClusterAutomatedBackupPolicyTimeBasedRetention>
      timeBasedRetentions;

  /// Weekly schedule for the Backup.
  final List<GetClusterAutomatedBackupPolicyWeeklySchedule> weeklySchedules;

  GetClusterAutomatedBackupPolicy({
    required this.backupWindow,
    required this.enabled,
    required this.encryptionConfigs,
    required this.labels,
    required this.location,
    required this.quantityBasedRetentions,
    required this.timeBasedRetentions,
    required this.weeklySchedules,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backupWindow'] = backupWindow;
    map['enabled'] = enabled;
    map['encryptionConfigs'] = pulumi.Input.encodeList<
        GetClusterAutomatedBackupPolicyEncryptionConfig,
        Map<String, dynamic>>(encryptionConfigs, (value) => value.toMap());
    map['labels'] = labels;
    map['location'] = location;
    map['quantityBasedRetentions'] = pulumi.Input.encodeList<
            GetClusterAutomatedBackupPolicyQuantityBasedRetention,
            Map<String, dynamic>>(
        quantityBasedRetentions, (value) => value.toMap());
    map['timeBasedRetentions'] = pulumi.Input.encodeList<
        GetClusterAutomatedBackupPolicyTimeBasedRetention,
        Map<String, dynamic>>(timeBasedRetentions, (value) => value.toMap());
    map['weeklySchedules'] = pulumi.Input.encodeList<
        GetClusterAutomatedBackupPolicyWeeklySchedule,
        Map<String, dynamic>>(weeklySchedules, (value) => value.toMap());
    return map;
  }

  factory GetClusterAutomatedBackupPolicy.fromMap(Map<String, dynamic> map) {
    return GetClusterAutomatedBackupPolicy(
      backupWindow: map['backupWindow'] as String,
      enabled: map['enabled'] as bool,
      encryptionConfigs: pulumi.Input.decodeList<
              GetClusterAutomatedBackupPolicyEncryptionConfig>(
          map['encryptionConfigs'],
          (value) => GetClusterAutomatedBackupPolicyEncryptionConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
      labels: (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      quantityBasedRetentions: pulumi.Input.decodeList<
              GetClusterAutomatedBackupPolicyQuantityBasedRetention>(
          map['quantityBasedRetentions'],
          (value) =>
              GetClusterAutomatedBackupPolicyQuantityBasedRetention.fromMap(
                  (value as Map).cast<String, dynamic>())),
      timeBasedRetentions: pulumi.Input.decodeList<
              GetClusterAutomatedBackupPolicyTimeBasedRetention>(
          map['timeBasedRetentions'],
          (value) => GetClusterAutomatedBackupPolicyTimeBasedRetention.fromMap(
              (value as Map).cast<String, dynamic>())),
      weeklySchedules: pulumi.Input.decodeList<
              GetClusterAutomatedBackupPolicyWeeklySchedule>(
          map['weeklySchedules'],
          (value) => GetClusterAutomatedBackupPolicyWeeklySchedule.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
