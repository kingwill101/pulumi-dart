// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_continuous_backup_config_encryption_config.dart';

class ClusterContinuousBackupConfig {
  /// Whether continuous backup recovery is enabled. If not set, defaults to true.
  final bool? enabled;

  /// EncryptionConfig describes the encryption config of a cluster or a backup that is encrypted with a CMEK (customer-managed encryption key).
  /// Structure is documented below.
  final ClusterContinuousBackupConfigEncryptionConfig? encryptionConfig;

  /// The numbers of days that are eligible to restore from using PITR. To support the entire recovery window, backups and logs are retained for one day more than the recovery window.
  /// If not set, defaults to 14 days.
  final int? recoveryWindowDays;

  /// Creates a new [ClusterContinuousBackupConfig].
  /// [enabled] Whether continuous backup recovery is enabled. If not set, defaults to true.
  /// [encryptionConfig] EncryptionConfig describes the encryption config of a cluster or a backup that is encrypted with a CMEK (customer-managed encryption key).
  /// [recoveryWindowDays] The numbers of days that are eligible to restore from using PITR. To support the entire recovery window, backups and logs are retained for one day more than the recovery window.
  ClusterContinuousBackupConfig({
    this.enabled,
    this.encryptionConfig,
    this.recoveryWindowDays,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    final encryptionConfigValue = encryptionConfig;
    if (encryptionConfigValue != null) {
      map['encryptionConfig'] = encryptionConfigValue.toMap();
    }
    final recoveryWindowDaysValue = recoveryWindowDays;
    if (recoveryWindowDaysValue != null) {
      map['recoveryWindowDays'] = recoveryWindowDaysValue;
    }
    return map;
  }

  factory ClusterContinuousBackupConfig.fromMap(Map<String, dynamic> map) {
    return ClusterContinuousBackupConfig(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      encryptionConfig: map['encryptionConfig'] == null
          ? null
          : ClusterContinuousBackupConfigEncryptionConfig.fromMap(
              (map['encryptionConfig'] as Map).cast<String, dynamic>()),
      recoveryWindowDays: map['recoveryWindowDays'] == null
          ? null
          : map['recoveryWindowDays'] as int,
    );
  }
}
