// ignore_for_file: unused_element, unnecessary_cast

class GetDatabaseInstancesInstanceRestoreBackupContext {
  /// The ID of the backup run to restore from.
  final int backupRunId;

  /// The ID of the instance that the backup was taken from.
  final String instanceId;

  /// The ID of the project in which the resources belong. If it is not provided, the provider project is used.
  final String project;

  GetDatabaseInstancesInstanceRestoreBackupContext({
    required this.backupRunId,
    required this.instanceId,
    required this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['backupRunId'] = backupRunId;
    map['instanceId'] = instanceId;
    map['project'] = project;
    return map;
  }

  factory GetDatabaseInstancesInstanceRestoreBackupContext.fromMap(
      Map<String, dynamic> map) {
    return GetDatabaseInstancesInstanceRestoreBackupContext(
      backupRunId: map['backupRunId'] as int,
      instanceId: map['instanceId'] as String,
      project: map['project'] as String,
    );
  }
}
