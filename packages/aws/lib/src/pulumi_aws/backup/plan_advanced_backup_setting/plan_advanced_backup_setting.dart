// ignore_for_file: unused_element, unnecessary_cast

class PlanAdvancedBackupSetting {
  /// Specifies the backup option for a selected resource. This option is only available for Windows VSS backup jobs. Set to `{ WindowsVSS = "enabled" }` to enable Windows VSS backup option and create a VSS Windows backup.
  final Map<String, String> backupOptions;

  /// The type of AWS resource to be backed up. For VSS Windows backups, the only supported resource type is Amazon EC2. Valid values: `EC2`.
  final String resourceType;

  PlanAdvancedBackupSetting({
    required this.backupOptions,
    required this.resourceType,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backupOptions'] = backupOptions;
    map['resourceType'] = resourceType;
    return map;
  }

  factory PlanAdvancedBackupSetting.fromMap(Map<String, dynamic> map) {
    return PlanAdvancedBackupSetting(
      backupOptions: (map['backupOptions'] as Map).cast<String, String>(),
      resourceType: map['resourceType'] as String,
    );
  }
}
