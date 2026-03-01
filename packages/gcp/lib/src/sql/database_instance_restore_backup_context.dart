// ignore_for_file: unused_element, unnecessary_cast

class DatabaseInstanceRestoreBackupContext {
  /// The ID of the backup run to restore from.
  final int backupRunId;

  /// The ID of the instance that the backup was taken from. If left empty,
  /// this instance's ID will be used.
  final String? instanceId;

  /// The full project ID of the source instance.`
  final String? project;

  /// Creates a new [DatabaseInstanceRestoreBackupContext].
  /// [backupRunId] The ID of the backup run to restore from.
  /// [instanceId] The ID of the instance that the backup was taken from. If left empty,
  /// [project] The full project ID of the source instance.`
  DatabaseInstanceRestoreBackupContext({
    required this.backupRunId,
    this.instanceId,
    this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupRunId': backupRunId,
      'instanceId': ?instanceId,
      'project': ?project,
    };
  }

  factory DatabaseInstanceRestoreBackupContext.fromMap(
    Map<String, dynamic> map,
  ) {
    return DatabaseInstanceRestoreBackupContext(
      backupRunId: map['backupRunId'] as int,
      instanceId: map['instanceId'] == null
          ? null
          : map['instanceId'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
