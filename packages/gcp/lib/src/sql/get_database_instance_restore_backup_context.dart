// ignore_for_file: unused_element, unnecessary_cast

class GetDatabaseInstanceRestoreBackupContext {
  /// The ID of the backup run to restore from.
  final int backupRunId;

  /// The ID of the instance that the backup was taken from.
  final String instanceId;

  /// The ID of the project in which the resource belongs.
  final String project;

  /// Creates a new [GetDatabaseInstanceRestoreBackupContext].
  /// [backupRunId] The ID of the backup run to restore from.
  /// [instanceId] The ID of the instance that the backup was taken from.
  /// [project] The ID of the project in which the resource belongs.
  GetDatabaseInstanceRestoreBackupContext({
    required this.backupRunId,
    required this.instanceId,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backupRunId': backupRunId,
      'instanceId': instanceId,
      'project': project,
    };
  }

  factory GetDatabaseInstanceRestoreBackupContext.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDatabaseInstanceRestoreBackupContext(
      backupRunId: map['backupRunId'] as int,
      instanceId: map['instanceId'] as String,
      project: map['project'] as String,
    );
  }
}
