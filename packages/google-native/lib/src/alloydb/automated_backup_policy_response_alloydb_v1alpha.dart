// ignore_for_file: unused_element, unnecessary_cast

import 'encryption_config_response_alloydb_v1alpha.dart';
import 'quantity_based_retention_response_alloydb_v1alpha.dart';
import 'time_based_retention_response_alloydb_v1alpha.dart';
import 'weekly_schedule_response_alloydb_v1alpha.dart';

/// Message describing the user-specified automated backup policy. All fields in the automated backup policy are optional. Defaults for each field are provided if they are not set.
class AutomatedBackupPolicyResponseAlloydbV1alpha {
  /// The length of the time window during which a backup can be taken. If a backup does not succeed within this time window, it will be canceled and considered failed. The backup window must be at least 5 minutes long. There is no upper bound on the window. If not set, it defaults to 1 hour.
  final String backupWindow;

  /// Whether automated automated backups are enabled. If not set, defaults to true.
  final bool enabled;

  /// Optional. The encryption config can be specified to encrypt the backups with a customer-managed encryption key (CMEK). When this field is not specified, the backup will then use default encryption scheme to protect the user data.
  final EncryptionConfigResponseAlloydbV1alpha encryptionConfig;

  /// Labels to apply to backups created using this configuration.
  final Map<String, String> labels;

  /// The location where the backup will be stored. Currently, the only supported option is to store the backup in the same region as the cluster. If empty, defaults to the region of the cluster.
  final String location;

  /// Quantity-based Backup retention policy to retain recent backups.
  final QuantityBasedRetentionResponseAlloydbV1alpha quantityBasedRetention;

  /// Time-based Backup retention policy.
  final TimeBasedRetentionResponseAlloydbV1alpha timeBasedRetention;

  /// Weekly schedule for the Backup.
  final WeeklyScheduleResponseAlloydbV1alpha weeklySchedule;

  /// Creates a new [AutomatedBackupPolicyResponseAlloydbV1alpha].
  /// [backupWindow] The length of the time window during which a backup can be taken. If a backup does not succeed within this time window, it will be canceled and considered failed. The backup window must be at least 5 minutes long. There is no upper bound on the window. If not set, it defaults to 1 hour.
  /// [enabled] Whether automated automated backups are enabled. If not set, defaults to true.
  /// [encryptionConfig] Optional. The encryption config can be specified to encrypt the backups with a customer-managed encryption key (CMEK). When this field is not specified, the backup will then use default encryption scheme to protect the user data.
  /// [labels] Labels to apply to backups created using this configuration.
  /// [location] The location where the backup will be stored. Currently, the only supported option is to store the backup in the same region as the cluster. If empty, defaults to the region of the cluster.
  /// [quantityBasedRetention] Quantity-based Backup retention policy to retain recent backups.
  /// [timeBasedRetention] Time-based Backup retention policy.
  /// [weeklySchedule] Weekly schedule for the Backup.
  AutomatedBackupPolicyResponseAlloydbV1alpha({
    required this.backupWindow,
    required this.enabled,
    required this.encryptionConfig,
    required this.labels,
    required this.location,
    required this.quantityBasedRetention,
    required this.timeBasedRetention,
    required this.weeklySchedule,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backupWindow'] = backupWindow;
    map['enabled'] = enabled;
    map['encryptionConfig'] = encryptionConfig.toMap();
    map['labels'] = labels;
    map['location'] = location;
    map['quantityBasedRetention'] = quantityBasedRetention.toMap();
    map['timeBasedRetention'] = timeBasedRetention.toMap();
    map['weeklySchedule'] = weeklySchedule.toMap();
    return map;
  }

  factory AutomatedBackupPolicyResponseAlloydbV1alpha.fromMap(
      Map<String, dynamic> map) {
    return AutomatedBackupPolicyResponseAlloydbV1alpha(
      backupWindow: map['backupWindow'] as String,
      enabled: map['enabled'] as bool,
      encryptionConfig: EncryptionConfigResponseAlloydbV1alpha.fromMap(
          (map['encryptionConfig'] as Map).cast<String, dynamic>()),
      labels: (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      quantityBasedRetention:
          QuantityBasedRetentionResponseAlloydbV1alpha.fromMap(
              (map['quantityBasedRetention'] as Map).cast<String, dynamic>()),
      timeBasedRetention: TimeBasedRetentionResponseAlloydbV1alpha.fromMap(
          (map['timeBasedRetention'] as Map).cast<String, dynamic>()),
      weeklySchedule: WeeklyScheduleResponseAlloydbV1alpha.fromMap(
          (map['weeklySchedule'] as Map).cast<String, dynamic>()),
    );
  }
}
