// ignore_for_file: unused_element, unnecessary_cast

import 'encryption_config.dart';
import 'quantity_based_retention.dart';
import 'time_based_retention.dart';
import 'weekly_schedule.dart';

/// Message describing the user-specified automated backup policy. All fields in the automated backup policy are optional. Defaults for each field are provided if they are not set.
class AutomatedBackupPolicy {
  /// The length of the time window during which a backup can be taken. If a backup does not succeed within this time window, it will be canceled and considered failed. The backup window must be at least 5 minutes long. There is no upper bound on the window. If not set, it defaults to 1 hour.
  final String? backupWindow;

  /// Whether automated automated backups are enabled. If not set, defaults to true.
  final bool? enabled;

  /// Optional. The encryption config can be specified to encrypt the backups with a customer-managed encryption key (CMEK). When this field is not specified, the backup will then use default encryption scheme to protect the user data.
  final EncryptionConfig? encryptionConfig;

  /// Labels to apply to backups created using this configuration.
  final Map<String, String>? labels;

  /// The location where the backup will be stored. Currently, the only supported option is to store the backup in the same region as the cluster. If empty, defaults to the region of the cluster.
  final String? location;

  /// Quantity-based Backup retention policy to retain recent backups.
  final QuantityBasedRetention? quantityBasedRetention;

  /// Time-based Backup retention policy.
  final TimeBasedRetention? timeBasedRetention;

  /// Weekly schedule for the Backup.
  final WeeklySchedule? weeklySchedule;

  /// Creates a new [AutomatedBackupPolicy].
  /// [backupWindow] The length of the time window during which a backup can be taken. If a backup does not succeed within this time window, it will be canceled and considered failed. The backup window must be at least 5 minutes long. There is no upper bound on the window. If not set, it defaults to 1 hour.
  /// [enabled] Whether automated automated backups are enabled. If not set, defaults to true.
  /// [encryptionConfig] Optional. The encryption config can be specified to encrypt the backups with a customer-managed encryption key (CMEK). When this field is not specified, the backup will then use default encryption scheme to protect the user data.
  /// [labels] Labels to apply to backups created using this configuration.
  /// [location] The location where the backup will be stored. Currently, the only supported option is to store the backup in the same region as the cluster. If empty, defaults to the region of the cluster.
  /// [quantityBasedRetention] Quantity-based Backup retention policy to retain recent backups.
  /// [timeBasedRetention] Time-based Backup retention policy.
  /// [weeklySchedule] Weekly schedule for the Backup.
  AutomatedBackupPolicy({
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
    return <String, dynamic>{
      'backupWindow': ?backupWindow,
      'enabled': ?enabled,
      'encryptionConfig': ?encryptionConfig == null
          ? null
          : encryptionConfig!.toMap(),
      'labels': ?labels,
      'location': ?location,
      'quantityBasedRetention': ?quantityBasedRetention == null
          ? null
          : quantityBasedRetention!.toMap(),
      'timeBasedRetention': ?timeBasedRetention == null
          ? null
          : timeBasedRetention!.toMap(),
      'weeklySchedule': ?weeklySchedule == null
          ? null
          : weeklySchedule!.toMap(),
    };
  }

  factory AutomatedBackupPolicy.fromMap(Map<String, dynamic> map) {
    return AutomatedBackupPolicy(
      backupWindow: map['backupWindow'] == null
          ? null
          : map['backupWindow'] as String,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      encryptionConfig: map['encryptionConfig'] == null
          ? null
          : EncryptionConfig.fromMap(
              (map['encryptionConfig'] as Map).cast<String, dynamic>(),
            ),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      quantityBasedRetention: map['quantityBasedRetention'] == null
          ? null
          : QuantityBasedRetention.fromMap(
              (map['quantityBasedRetention'] as Map).cast<String, dynamic>(),
            ),
      timeBasedRetention: map['timeBasedRetention'] == null
          ? null
          : TimeBasedRetention.fromMap(
              (map['timeBasedRetention'] as Map).cast<String, dynamic>(),
            ),
      weeklySchedule: map['weeklySchedule'] == null
          ? null
          : WeeklySchedule.fromMap(
              (map['weeklySchedule'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
