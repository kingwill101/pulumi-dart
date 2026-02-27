// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Arguments for getBackup.
class GetBackupArgs {
  /// The ID of the Backup Vault of the Data Source in which the Backup belongs.
  final pulumi.Input<String> backupVaultId;

  /// The ID of the Data Source in which the Backup belongs.
  final pulumi.Input<String> dataSourceId;

  /// The location in which the Backup belongs.
  final pulumi.Input<String> location;

  /// The Google Cloud Project in which the Backup belongs.
  final pulumi.Input<String> project;

  GetBackupArgs({
    required this.backupVaultId,
    required this.dataSourceId,
    required this.location,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backupVaultId'] = backupVaultId;
    map['dataSourceId'] = dataSourceId;
    map['location'] = location;
    map['project'] = project;
    return map;
  }

  factory GetBackupArgs.fromMap(Map<String, dynamic> map) {
    return GetBackupArgs(
      backupVaultId: pulumi.Input.asInput<String>(map['backupVaultId']),
      dataSourceId: pulumi.Input.asInput<String>(map['dataSourceId']),
      location: pulumi.Input.asInput<String>(map['location']),
      project: pulumi.Input.asInput<String>(map['project']),
    );
  }
}
