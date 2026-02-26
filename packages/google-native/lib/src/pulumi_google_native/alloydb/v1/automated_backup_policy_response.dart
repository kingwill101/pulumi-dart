// ignore_for_file: unused_element, unnecessary_cast

import 'encryption_config_response.dart';
import 'quantity_based_retention_response.dart';
import 'time_based_retention_response.dart';
import 'weekly_schedule_response.dart';

/// Message describing the user-specified automated backup policy. All fields in the automated backup policy are optional. Defaults for each field are provided if they are not set.
class AutomatedBackupPolicyResponse {
  /// The length of the time window during which a backup can be taken. If a backup does not succeed within this time window, it will be canceled and considered failed. The backup window must be at least 5 minutes long. There is no upper bound on the window. If not set, it defaults to 1 hour.
  final String backupWindow;

  /// Whether automated automated backups are enabled. If not set, defaults to true.
  final bool enabled;

  /// Optional. The encryption config can be specified to encrypt the backups with a customer-managed encryption key (CMEK). When this field is not specified, the backup will then use default encryption scheme to protect the user data.
  final EncryptionConfigResponse encryptionConfig;

  /// Labels to apply to backups created using this configuration.
  final Map<String, String> labels;

  /// The location where the backup will be stored. Currently, the only supported option is to store the backup in the same region as the cluster. If empty, defaults to the region of the cluster.
  final String location;

  /// Quantity-based Backup retention policy to retain recent backups.
  final QuantityBasedRetentionResponse quantityBasedRetention;

  /// Time-based Backup retention policy.
  final TimeBasedRetentionResponse timeBasedRetention;

  /// Weekly schedule for the Backup.
  final WeeklyScheduleResponse weeklySchedule;

  AutomatedBackupPolicyResponse({
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

  factory AutomatedBackupPolicyResponse.fromMap(Map<String, dynamic> map) {
    return AutomatedBackupPolicyResponse(
      backupWindow: map['backupWindow'] as String,
      enabled: map['enabled'] as bool,
      encryptionConfig: EncryptionConfigResponse.fromMap(
          (map['encryptionConfig'] as Map).cast<String, dynamic>()),
      labels: (map['labels'] as Map).cast<String, String>(),
      location: map['location'] as String,
      quantityBasedRetention: QuantityBasedRetentionResponse.fromMap(
          (map['quantityBasedRetention'] as Map).cast<String, dynamic>()),
      timeBasedRetention: TimeBasedRetentionResponse.fromMap(
          (map['timeBasedRetention'] as Map).cast<String, dynamic>()),
      weeklySchedule: WeeklyScheduleResponse.fromMap(
          (map['weeklySchedule'] as Map).cast<String, dynamic>()),
    );
  }
}
