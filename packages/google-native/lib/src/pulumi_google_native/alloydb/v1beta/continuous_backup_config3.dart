// ignore_for_file: unused_element, unnecessary_cast

import 'encryption_config3.dart';

/// ContinuousBackupConfig describes the continuous backups recovery configurations of a cluster.
class ContinuousBackupConfig3 {
  /// Whether ContinuousBackup is enabled.
  final bool? enabled;

  /// The encryption config can be specified to encrypt the backups with a customer-managed encryption key (CMEK). When this field is not specified, the backup will then use default encryption scheme to protect the user data.
  final EncryptionConfig3? encryptionConfig;

  /// The number of days that are eligible to restore from using PITR. To support the entire recovery window, backups and logs are retained for one day more than the recovery window. If not set, defaults to 14 days.
  final int? recoveryWindowDays;

  ContinuousBackupConfig3({
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

  factory ContinuousBackupConfig3.fromMap(Map<String, dynamic> map) {
    return ContinuousBackupConfig3(
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
      encryptionConfig: map['encryptionConfig'] == null
          ? null
          : EncryptionConfig3.fromMap(
              (map['encryptionConfig'] as Map).cast<String, dynamic>()),
      recoveryWindowDays: map['recoveryWindowDays'] == null
          ? null
          : map['recoveryWindowDays'] as int,
    );
  }
}
