// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_data_source_backup_config_info_backup_appliance_backup_config/get_data_source_backup_config_info_backup_appliance_backup_config.dart';
import '../get_data_source_backup_config_info_gcp_backup_config/get_data_source_backup_config_info_gcp_backup_config.dart';

class GetDataSourceBackupConfigInfo {
  /// Configuration for an application backed up by a Backup Appliance.
  final List<GetDataSourceBackupConfigInfoBackupApplianceBackupConfig>
      backupApplianceBackupConfigs;

  /// Configuration for a Google Cloud resource.
  final List<GetDataSourceBackupConfigInfoGcpBackupConfig> gcpBackupConfigs;

  /// If the last backup failed, this field has the error message.
  final Map<String, String> lastBackupError;

  /// LastBackupstate tracks whether the last backup was not yet started, successful, failed, or could not be run because of the lack of permissions.
  final String lastBackupState;

  /// If the last backup were successful, this field has the consistency date.
  final String lastSuccessfulBackupConsistencyTime;

  GetDataSourceBackupConfigInfo({
    required this.backupApplianceBackupConfigs,
    required this.gcpBackupConfigs,
    required this.lastBackupError,
    required this.lastBackupState,
    required this.lastSuccessfulBackupConsistencyTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backupApplianceBackupConfigs'] = Input.encodeList<
            GetDataSourceBackupConfigInfoBackupApplianceBackupConfig,
            Map<String, dynamic>>(
        backupApplianceBackupConfigs, (value) => value.toMap());
    map['gcpBackupConfigs'] = Input.encodeList<
        GetDataSourceBackupConfigInfoGcpBackupConfig,
        Map<String, dynamic>>(gcpBackupConfigs, (value) => value.toMap());
    map['lastBackupError'] = lastBackupError;
    map['lastBackupState'] = lastBackupState;
    map['lastSuccessfulBackupConsistencyTime'] =
        lastSuccessfulBackupConsistencyTime;
    return map;
  }

  factory GetDataSourceBackupConfigInfo.fromMap(Map<String, dynamic> map) {
    return GetDataSourceBackupConfigInfo(
      backupApplianceBackupConfigs: Input.decodeList<
              GetDataSourceBackupConfigInfoBackupApplianceBackupConfig>(
          map['backupApplianceBackupConfigs'],
          (value) =>
              GetDataSourceBackupConfigInfoBackupApplianceBackupConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      gcpBackupConfigs:
          Input.decodeList<GetDataSourceBackupConfigInfoGcpBackupConfig>(
              map['gcpBackupConfigs'],
              (value) => GetDataSourceBackupConfigInfoGcpBackupConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
      lastBackupError: (map['lastBackupError'] as Map).cast<String, String>(),
      lastBackupState: map['lastBackupState'] as String,
      lastSuccessfulBackupConsistencyTime:
          map['lastSuccessfulBackupConsistencyTime'] as String,
    );
  }
}
