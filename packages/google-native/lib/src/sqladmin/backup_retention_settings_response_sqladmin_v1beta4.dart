// ignore_for_file: unused_element, unnecessary_cast

/// We currently only support backup retention by specifying the number of backups we will retain.
class BackupRetentionSettingsResponseSqladminV1beta4 {
  /// Depending on the value of retention_unit, this is used to determine if a backup needs to be deleted. If retention_unit is 'COUNT', we will retain this many backups.
  final int retainedBackups;

  /// The unit that 'retained_backups' represents.
  final String retentionUnit;

  /// Creates a new [BackupRetentionSettingsResponseSqladminV1beta4].
  /// [retainedBackups] Depending on the value of retention_unit, this is used to determine if a backup needs to be deleted. If retention_unit is 'COUNT', we will retain this many backups.
  /// [retentionUnit] The unit that 'retained_backups' represents.
  BackupRetentionSettingsResponseSqladminV1beta4({
    required this.retainedBackups,
    required this.retentionUnit,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['retainedBackups'] = retainedBackups;
    map['retentionUnit'] = retentionUnit;
    return map;
  }

  factory BackupRetentionSettingsResponseSqladminV1beta4.fromMap(
      Map<String, dynamic> map) {
    return BackupRetentionSettingsResponseSqladminV1beta4(
      retainedBackups: map['retainedBackups'] as int,
      retentionUnit: map['retentionUnit'] as String,
    );
  }
}
