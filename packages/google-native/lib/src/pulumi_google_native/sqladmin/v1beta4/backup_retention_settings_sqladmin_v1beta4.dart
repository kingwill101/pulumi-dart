// ignore_for_file: unused_element, unnecessary_cast

import 'backup_retention_settings_retention_unit_sqladmin_v1beta4.dart';

/// We currently only support backup retention by specifying the number of backups we will retain.
class BackupRetentionSettingsSqladminV1beta4 {
  /// Depending on the value of retention_unit, this is used to determine if a backup needs to be deleted. If retention_unit is 'COUNT', we will retain this many backups.
  final int? retainedBackups;

  /// The unit that 'retained_backups' represents.
  final BackupRetentionSettingsRetentionUnitSqladminV1beta4? retentionUnit;

  BackupRetentionSettingsSqladminV1beta4({
    this.retainedBackups,
    this.retentionUnit,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final retainedBackupsValue = retainedBackups;
    if (retainedBackupsValue != null) {
      map['retainedBackups'] = retainedBackupsValue;
    }
    final retentionUnitValue = retentionUnit;
    if (retentionUnitValue != null) {
      map['retentionUnit'] = retentionUnitValue.value;
    }
    return map;
  }

  factory BackupRetentionSettingsSqladminV1beta4.fromMap(
      Map<String, dynamic> map) {
    return BackupRetentionSettingsSqladminV1beta4(
      retainedBackups:
          map['retainedBackups'] == null ? null : map['retainedBackups'] as int,
      retentionUnit: map['retentionUnit'] == null
          ? null
          : BackupRetentionSettingsRetentionUnitSqladminV1beta4.fromValue(
              map['retentionUnit'] as String),
    );
  }
}
