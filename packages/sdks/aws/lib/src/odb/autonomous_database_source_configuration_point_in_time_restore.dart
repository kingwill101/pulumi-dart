// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class AutonomousDatabaseSourceConfigurationPointInTimeRestore {
  /// List of tablespace IDs to clone.
  final pulumi.Input<List<int>?>? cloneTableSpaceLists;
  /// Clone type.
  final pulumi.Input<String> cloneType;
  /// ID of the source Autonomous Database.
  final pulumi.Input<String> sourceAutonomousDatabaseId;
  /// RFC3339 timestamp to which the database is restored.
  final pulumi.Input<String?>? timestamp;
  /// Whether to use the latest available backup timestamp.
  final pulumi.Input<bool?>? useLatestAvailableBackupTimestamp;

  /// Creates a new [AutonomousDatabaseSourceConfigurationPointInTimeRestore].
  /// [cloneTableSpaceLists] List of tablespace IDs to clone.
  /// [cloneType] Clone type.
  /// [sourceAutonomousDatabaseId] ID of the source Autonomous Database.
  /// [timestamp] RFC3339 timestamp to which the database is restored.
  /// [useLatestAvailableBackupTimestamp] Whether to use the latest available backup timestamp.
  const AutonomousDatabaseSourceConfigurationPointInTimeRestore({
    this.cloneTableSpaceLists,
    required this.cloneType,
    required this.sourceAutonomousDatabaseId,
    this.timestamp,
    this.useLatestAvailableBackupTimestamp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloneTableSpaceLists': ?cloneTableSpaceLists,
      'cloneType': cloneType,
      'sourceAutonomousDatabaseId': sourceAutonomousDatabaseId,
      'timestamp': ?timestamp,
      'useLatestAvailableBackupTimestamp': ?useLatestAvailableBackupTimestamp,
    };
  }

  factory AutonomousDatabaseSourceConfigurationPointInTimeRestore.fromMap(Map<String, dynamic> map) {
    return AutonomousDatabaseSourceConfigurationPointInTimeRestore(
      cloneTableSpaceLists: (() { final guardedValue = map['cloneTableSpaceLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<int>()); })(),
      cloneType: pulumi.Input.fromValue(map['cloneType'] as String),
      sourceAutonomousDatabaseId: pulumi.Input.fromValue(map['sourceAutonomousDatabaseId'] as String),
      timestamp: (() { final guardedValue = map['timestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      useLatestAvailableBackupTimestamp: (() { final guardedValue = map['useLatestAvailableBackupTimestamp']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
