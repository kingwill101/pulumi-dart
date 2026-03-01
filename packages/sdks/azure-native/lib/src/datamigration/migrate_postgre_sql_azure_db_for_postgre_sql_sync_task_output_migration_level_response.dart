// ignore_for_file: unused_element, unnecessary_cast


class MigratePostgreSqlAzureDbForPostgreSqlSyncTaskOutputMigrationLevelResponse {
  /// Number of databases to include
  final double? databaseCount;
  /// Migration end time
  final String endedOn;
  /// Result identifier
  final String id;
  /// Result type
  /// Expected value is 'MigrationLevelOutput'.
  final String resultType;
  /// Source server name
  final String sourceServer;
  /// Source server type.
  final String sourceServerType;
  /// Source server version
  final String sourceServerVersion;
  /// Migration start time
  final String startedOn;
  /// Migration status
  final String state;
  /// Target server name
  final String targetServer;
  /// Target server type.
  final String targetServerType;
  /// Target server version
  final String targetServerVersion;

  /// Creates a new [MigratePostgreSqlAzureDbForPostgreSqlSyncTaskOutputMigrationLevelResponse].
  /// [databaseCount] Number of databases to include
  /// [endedOn] Migration end time
  /// [id] Result identifier
  /// [resultType] Result type
  /// [sourceServer] Source server name
  /// [sourceServerType] Source server type.
  /// [sourceServerVersion] Source server version
  /// [startedOn] Migration start time
  /// [state] Migration status
  /// [targetServer] Target server name
  /// [targetServerType] Target server type.
  /// [targetServerVersion] Target server version
  MigratePostgreSqlAzureDbForPostgreSqlSyncTaskOutputMigrationLevelResponse({
    this.databaseCount,
    required this.endedOn,
    required this.id,
    required this.resultType,
    required this.sourceServer,
    required this.sourceServerType,
    required this.sourceServerVersion,
    required this.startedOn,
    required this.state,
    required this.targetServer,
    required this.targetServerType,
    required this.targetServerVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseCount': ?databaseCount,
      'endedOn': endedOn,
      'id': id,
      'resultType': resultType,
      'sourceServer': sourceServer,
      'sourceServerType': sourceServerType,
      'sourceServerVersion': sourceServerVersion,
      'startedOn': startedOn,
      'state': state,
      'targetServer': targetServer,
      'targetServerType': targetServerType,
      'targetServerVersion': targetServerVersion,
    };
  }

  factory MigratePostgreSqlAzureDbForPostgreSqlSyncTaskOutputMigrationLevelResponse.fromMap(Map<String, dynamic> map) {
    return MigratePostgreSqlAzureDbForPostgreSqlSyncTaskOutputMigrationLevelResponse(
      databaseCount: map['databaseCount'] == null ? null : map['databaseCount'] as double,
      endedOn: map['endedOn'] as String,
      id: map['id'] as String,
      resultType: map['resultType'] as String,
      sourceServer: map['sourceServer'] as String,
      sourceServerType: map['sourceServerType'] as String,
      sourceServerVersion: map['sourceServerVersion'] as String,
      startedOn: map['startedOn'] as String,
      state: map['state'] as String,
      targetServer: map['targetServer'] as String,
      targetServerType: map['targetServerType'] as String,
      targetServerVersion: map['targetServerVersion'] as String,
    );
  }
}

