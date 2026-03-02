// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PlanAdvancedBackupSetting {
  /// Specifies the backup option for a selected resource. This option is only available for Windows VSS backup jobs. Set to `{ WindowsVSS = "enabled" }` to enable Windows VSS backup option and create a VSS Windows backup.
  final pulumi.Input<Map<String, String>> backupOptions;
  /// The type of AWS resource to be backed up. For VSS Windows backups, the only supported resource type is Amazon EC2. Valid values: `EC2`.
  final pulumi.Input<String> resourceType;

  /// Creates a new [PlanAdvancedBackupSetting].
  /// [backupOptions] Specifies the backup option for a selected resource. This option is only available for Windows VSS backup jobs. Set to `{ WindowsVSS = "enabled" }` to enable Windows VSS backup option and create a VSS Windows backup.
  /// [resourceType] The type of AWS resource to be backed up. For VSS Windows backups, the only supported resource type is Amazon EC2. Valid values: `EC2`.
  PlanAdvancedBackupSetting({
    required this.backupOptions,
    required this.resourceType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupOptions': backupOptions,
      'resourceType': resourceType,
    };
  }

  factory PlanAdvancedBackupSetting.fromMap(Map<String, dynamic> map) {
    return PlanAdvancedBackupSetting(
      backupOptions: ((map['backupOptions'] as Map).cast<String, String>()).input(),
      resourceType: (map['resourceType'] as String).input(),
    );
  }
}

