// ignore_for_file: unused_element, unnecessary_cast

import 'sqlstorage_settings.dart';
import 'sqltemp_db_settings.dart';

/// Storage Configurations for SQL Data, Log and TempDb.
class StorageConfigurationSettings {
  /// Disk configuration to apply to SQL Server.
  final String? diskConfigurationType;
  /// Enable SQL IaaS Agent storage configuration blade in Azure Portal.
  final bool? enableStorageConfigBlade;
  /// SQL Server Data Storage Settings.
  final SQLStorageSettings? sqlDataSettings;
  /// SQL Server Log Storage Settings.
  final SQLStorageSettings? sqlLogSettings;
  /// SQL Server SystemDb Storage on DataPool if true.
  final bool? sqlSystemDbOnDataDisk;
  /// SQL Server TempDb Storage Settings.
  final SQLTempDbSettings? sqlTempDbSettings;
  /// Storage workload type.
  final String? storageWorkloadType;

  /// Creates a new [StorageConfigurationSettings].
  /// [diskConfigurationType] Disk configuration to apply to SQL Server.
  /// [enableStorageConfigBlade] Enable SQL IaaS Agent storage configuration blade in Azure Portal.
  /// [sqlDataSettings] SQL Server Data Storage Settings.
  /// [sqlLogSettings] SQL Server Log Storage Settings.
  /// [sqlSystemDbOnDataDisk] SQL Server SystemDb Storage on DataPool if true.
  /// [sqlTempDbSettings] SQL Server TempDb Storage Settings.
  /// [storageWorkloadType] Storage workload type.
  StorageConfigurationSettings({
    this.diskConfigurationType,
    this.enableStorageConfigBlade,
    this.sqlDataSettings,
    this.sqlLogSettings,
    this.sqlSystemDbOnDataDisk,
    this.sqlTempDbSettings,
    this.storageWorkloadType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskConfigurationType': ?diskConfigurationType,
      'enableStorageConfigBlade': ?enableStorageConfigBlade,
      'sqlDataSettings': ?sqlDataSettings == null ? null : sqlDataSettings!.toMap(),
      'sqlLogSettings': ?sqlLogSettings == null ? null : sqlLogSettings!.toMap(),
      'sqlSystemDbOnDataDisk': ?sqlSystemDbOnDataDisk,
      'sqlTempDbSettings': ?sqlTempDbSettings == null ? null : sqlTempDbSettings!.toMap(),
      'storageWorkloadType': ?storageWorkloadType,
    };
  }

  factory StorageConfigurationSettings.fromMap(Map<String, dynamic> map) {
    return StorageConfigurationSettings(
      diskConfigurationType: map['diskConfigurationType'] == null ? null : map['diskConfigurationType'] as String,
      enableStorageConfigBlade: map['enableStorageConfigBlade'] == null ? null : map['enableStorageConfigBlade'] as bool,
      sqlDataSettings: map['sqlDataSettings'] == null ? null : SQLStorageSettings.fromMap((map['sqlDataSettings'] as Map).cast<String, dynamic>()),
      sqlLogSettings: map['sqlLogSettings'] == null ? null : SQLStorageSettings.fromMap((map['sqlLogSettings'] as Map).cast<String, dynamic>()),
      sqlSystemDbOnDataDisk: map['sqlSystemDbOnDataDisk'] == null ? null : map['sqlSystemDbOnDataDisk'] as bool,
      sqlTempDbSettings: map['sqlTempDbSettings'] == null ? null : SQLTempDbSettings.fromMap((map['sqlTempDbSettings'] as Map).cast<String, dynamic>()),
      storageWorkloadType: map['storageWorkloadType'] == null ? null : map['storageWorkloadType'] as String,
    );
  }
}

