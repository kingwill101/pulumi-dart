// ignore_for_file: unused_element, unnecessary_cast


class MigrateSqlServerSqlMISyncTaskOutputMigrationLevelResponse {
  /// Count of databases
  final int databaseCount;
  /// Number of database level errors
  final int databaseErrorCount;
  /// Migration end time
  final String endedOn;
  /// Result identifier
  final String id;
  /// Result type
  /// Expected value is 'MigrationLevelOutput'.
  final String resultType;
  /// Source server brand version
  final String sourceServerBrandVersion;
  /// Source server name
  final String sourceServerName;
  /// Source server version
  final String sourceServerVersion;
  /// Migration start time
  final String startedOn;
  /// Current state of migration
  final String state;
  /// Target server brand version
  final String targetServerBrandVersion;
  /// Target server name
  final String targetServerName;
  /// Target server version
  final String targetServerVersion;

  /// Creates a new [MigrateSqlServerSqlMISyncTaskOutputMigrationLevelResponse].
  /// [databaseCount] Count of databases
  /// [databaseErrorCount] Number of database level errors
  /// [endedOn] Migration end time
  /// [id] Result identifier
  /// [resultType] Result type
  /// [sourceServerBrandVersion] Source server brand version
  /// [sourceServerName] Source server name
  /// [sourceServerVersion] Source server version
  /// [startedOn] Migration start time
  /// [state] Current state of migration
  /// [targetServerBrandVersion] Target server brand version
  /// [targetServerName] Target server name
  /// [targetServerVersion] Target server version
  MigrateSqlServerSqlMISyncTaskOutputMigrationLevelResponse({
    required this.databaseCount,
    required this.databaseErrorCount,
    required this.endedOn,
    required this.id,
    required this.resultType,
    required this.sourceServerBrandVersion,
    required this.sourceServerName,
    required this.sourceServerVersion,
    required this.startedOn,
    required this.state,
    required this.targetServerBrandVersion,
    required this.targetServerName,
    required this.targetServerVersion,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'databaseCount': databaseCount,
      'databaseErrorCount': databaseErrorCount,
      'endedOn': endedOn,
      'id': id,
      'resultType': resultType,
      'sourceServerBrandVersion': sourceServerBrandVersion,
      'sourceServerName': sourceServerName,
      'sourceServerVersion': sourceServerVersion,
      'startedOn': startedOn,
      'state': state,
      'targetServerBrandVersion': targetServerBrandVersion,
      'targetServerName': targetServerName,
      'targetServerVersion': targetServerVersion,
    };
  }

  factory MigrateSqlServerSqlMISyncTaskOutputMigrationLevelResponse.fromMap(Map<String, dynamic> map) {
    return MigrateSqlServerSqlMISyncTaskOutputMigrationLevelResponse(
      databaseCount: map['databaseCount'] as int,
      databaseErrorCount: map['databaseErrorCount'] as int,
      endedOn: map['endedOn'] as String,
      id: map['id'] as String,
      resultType: map['resultType'] as String,
      sourceServerBrandVersion: map['sourceServerBrandVersion'] as String,
      sourceServerName: map['sourceServerName'] as String,
      sourceServerVersion: map['sourceServerVersion'] as String,
      startedOn: map['startedOn'] as String,
      state: map['state'] as String,
      targetServerBrandVersion: map['targetServerBrandVersion'] as String,
      targetServerName: map['targetServerName'] as String,
      targetServerVersion: map['targetServerVersion'] as String,
    );
  }
}

