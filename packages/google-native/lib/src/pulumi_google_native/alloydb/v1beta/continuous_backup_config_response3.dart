// ignore_for_file: unused_element, unnecessary_cast

import 'encryption_config_response3.dart';

/// ContinuousBackupConfig describes the continuous backups recovery configurations of a cluster.
class ContinuousBackupConfigResponse3 {
  /// Whether ContinuousBackup is enabled.
  final bool enabled;

  /// The encryption config can be specified to encrypt the backups with a customer-managed encryption key (CMEK). When this field is not specified, the backup will then use default encryption scheme to protect the user data.
  final EncryptionConfigResponse3 encryptionConfig;

  /// The number of days that are eligible to restore from using PITR. To support the entire recovery window, backups and logs are retained for one day more than the recovery window. If not set, defaults to 14 days.
  final int recoveryWindowDays;

  ContinuousBackupConfigResponse3({
    required this.enabled,
    required this.encryptionConfig,
    required this.recoveryWindowDays,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    map['encryptionConfig'] = encryptionConfig.toMap();
    map['recoveryWindowDays'] = recoveryWindowDays;
    return map;
  }

  factory ContinuousBackupConfigResponse3.fromMap(Map<String, dynamic> map) {
    return ContinuousBackupConfigResponse3(
      enabled: map['enabled'] as bool,
      encryptionConfig: EncryptionConfigResponse3.fromMap(
          (map['encryptionConfig'] as Map).cast<String, dynamic>()),
      recoveryWindowDays: map['recoveryWindowDays'] as int,
    );
  }
}
