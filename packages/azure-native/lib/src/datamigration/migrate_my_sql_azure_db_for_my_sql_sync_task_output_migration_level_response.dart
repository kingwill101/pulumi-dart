// ignore_for_file: unused_element, unnecessary_cast


class MigrateMySqlAzureDbForMySqlSyncTaskOutputMigrationLevelResponse {
  /// Migration end time
  final String endedOn;
  /// Result identifier
  final String id;
  /// Result type
  /// Expected value is 'MigrationLevelOutput'.
  final String resultType;
  /// Source server name
  final String sourceServer;
  /// Source server version
  final String sourceServerVersion;
  /// Migration start time
  final String startedOn;
  /// Target server name
  final String targetServer;
  /// Target server version
  final String targetServerVersion;

  /// Creates a new [MigrateMySqlAzureDbForMySqlSyncTaskOutputMigrationLevelResponse].
  /// [endedOn] Migration end time
  /// [id] Result identifier
  /// [resultType] Result type
  /// [sourceServer] Source server name
  /// [sourceServerVersion] Source server version
  /// [startedOn] Migration start time
  /// [targetServer] Target server name
  /// [targetServerVersion] Target server version
  MigrateMySqlAzureDbForMySqlSyncTaskOutputMigrationLevelResponse({
    required this.endedOn,
    required this.id,
    required this.resultType,
    required this.sourceServer,
    required this.sourceServerVersion,
    required this.startedOn,
    required this.targetServer,
    required this.targetServerVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endedOn': endedOn,
      'id': id,
      'resultType': resultType,
      'sourceServer': sourceServer,
      'sourceServerVersion': sourceServerVersion,
      'startedOn': startedOn,
      'targetServer': targetServer,
      'targetServerVersion': targetServerVersion,
    };
  }

  factory MigrateMySqlAzureDbForMySqlSyncTaskOutputMigrationLevelResponse.fromMap(Map<String, dynamic> map) {
    return MigrateMySqlAzureDbForMySqlSyncTaskOutputMigrationLevelResponse(
      endedOn: map['endedOn'] as String,
      id: map['id'] as String,
      resultType: map['resultType'] as String,
      sourceServer: map['sourceServer'] as String,
      sourceServerVersion: map['sourceServerVersion'] as String,
      startedOn: map['startedOn'] as String,
      targetServer: map['targetServer'] as String,
      targetServerVersion: map['targetServerVersion'] as String,
    );
  }
}

