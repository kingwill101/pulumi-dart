// ignore_for_file: unused_element, unnecessary_cast

import 'encryption_config_response.dart';

/// ContinuousBackupConfig describes the continuous backups recovery configurations of a cluster.
class ContinuousBackupConfigResponse {
  /// Whether ContinuousBackup is enabled.
  final bool enabled;

  /// The encryption config can be specified to encrypt the backups with a customer-managed encryption key (CMEK). When this field is not specified, the backup will then use default encryption scheme to protect the user data.
  final EncryptionConfigResponse encryptionConfig;

  /// The number of days that are eligible to restore from using PITR. To support the entire recovery window, backups and logs are retained for one day more than the recovery window. If not set, defaults to 14 days.
  final int recoveryWindowDays;

  /// Creates a new [ContinuousBackupConfigResponse].
  /// [enabled] Whether ContinuousBackup is enabled.
  /// [encryptionConfig] The encryption config can be specified to encrypt the backups with a customer-managed encryption key (CMEK). When this field is not specified, the backup will then use default encryption scheme to protect the user data.
  /// [recoveryWindowDays] The number of days that are eligible to restore from using PITR. To support the entire recovery window, backups and logs are retained for one day more than the recovery window. If not set, defaults to 14 days.
  ContinuousBackupConfigResponse({
    required this.enabled,
    required this.encryptionConfig,
    required this.recoveryWindowDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'encryptionConfig': encryptionConfig.toMap(),
      'recoveryWindowDays': recoveryWindowDays,
    };
  }

  factory ContinuousBackupConfigResponse.fromMap(Map<String, dynamic> map) {
    return ContinuousBackupConfigResponse(
      enabled: map['enabled'] as bool,
      encryptionConfig: EncryptionConfigResponse.fromMap(
        (map['encryptionConfig'] as Map).cast<String, dynamic>(),
      ),
      recoveryWindowDays: map['recoveryWindowDays'] as int,
    );
  }
}
