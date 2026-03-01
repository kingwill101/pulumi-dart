// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_continuous_backup_config_encryption_config.dart';

class GetClusterContinuousBackupConfig {
  /// Whether continuous backup recovery is enabled. If not set, defaults to true.
  final bool enabled;

  /// EncryptionConfig describes the encryption config of a cluster or a backup that is encrypted with a CMEK (customer-managed encryption key).
  final List<GetClusterContinuousBackupConfigEncryptionConfig>
  encryptionConfigs;

  /// The numbers of days that are eligible to restore from using PITR. To support the entire recovery window, backups and logs are retained for one day more than the recovery window.
  ///
  /// If not set, defaults to 14 days.
  final int recoveryWindowDays;

  /// Creates a new [GetClusterContinuousBackupConfig].
  /// [enabled] Whether continuous backup recovery is enabled. If not set, defaults to true.
  /// [encryptionConfigs] EncryptionConfig describes the encryption config of a cluster or a backup that is encrypted with a CMEK (customer-managed encryption key).
  /// [recoveryWindowDays] The numbers of days that are eligible to restore from using PITR. To support the entire recovery window, backups and logs are retained for one day more than the recovery window.
  GetClusterContinuousBackupConfig({
    required this.enabled,
    required this.encryptionConfigs,
    required this.recoveryWindowDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'encryptionConfigs':
          pulumi.Input.encodeList<
            GetClusterContinuousBackupConfigEncryptionConfig,
            Map<String, dynamic>
          >(encryptionConfigs, (value) => value.toMap()),
      'recoveryWindowDays': recoveryWindowDays,
    };
  }

  factory GetClusterContinuousBackupConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterContinuousBackupConfig(
      enabled: map['enabled'] as bool,
      encryptionConfigs:
          pulumi.Input.decodeList<
            GetClusterContinuousBackupConfigEncryptionConfig
          >(
            map['encryptionConfigs'],
            (value) => GetClusterContinuousBackupConfigEncryptionConfig.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      recoveryWindowDays: map['recoveryWindowDays'] as int,
    );
  }
}
