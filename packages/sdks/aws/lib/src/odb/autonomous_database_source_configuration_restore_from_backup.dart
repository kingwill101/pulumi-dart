// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutonomousDatabaseSourceConfigurationRestoreFromBackup {
  /// ID of the Autonomous Database backup.
  final pulumi.Input<String> autonomousDatabaseBackupId;
  /// List of tablespace IDs to clone.
  final pulumi.Input<List<int>?>? cloneTableSpaceLists;
  /// Clone type.
  final pulumi.Input<String> cloneType;

  /// Creates a new [AutonomousDatabaseSourceConfigurationRestoreFromBackup].
  /// [autonomousDatabaseBackupId] ID of the Autonomous Database backup.
  /// [cloneTableSpaceLists] List of tablespace IDs to clone.
  /// [cloneType] Clone type.
  const AutonomousDatabaseSourceConfigurationRestoreFromBackup({
    required this.autonomousDatabaseBackupId,
    this.cloneTableSpaceLists,
    required this.cloneType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'autonomousDatabaseBackupId': autonomousDatabaseBackupId,
      'cloneTableSpaceLists': ?cloneTableSpaceLists,
      'cloneType': cloneType,
    };
  }

  factory AutonomousDatabaseSourceConfigurationRestoreFromBackup.fromMap(Map<String, dynamic> map) {
    return AutonomousDatabaseSourceConfigurationRestoreFromBackup(
      autonomousDatabaseBackupId: pulumi.Input.fromValue(map['autonomousDatabaseBackupId'] as String),
      cloneTableSpaceLists: (() { final guardedValue = map['cloneTableSpaceLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      cloneType: pulumi.Input.fromValue(map['cloneType'] as String),
    );
  }
}
