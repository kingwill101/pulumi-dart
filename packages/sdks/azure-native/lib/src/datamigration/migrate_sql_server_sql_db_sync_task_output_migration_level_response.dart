// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MigrateSqlServerSqlDbSyncTaskOutputMigrationLevelResponse {
  /// Count of databases
  final pulumi.Input<int> databaseCount;
  /// Migration end time
  final pulumi.Input<String> endedOn;
  /// Result identifier
  final pulumi.Input<String> id;
  /// Result type
  /// Expected value is 'MigrationLevelOutput'.
  final pulumi.Input<String> resultType;
  /// Source server name
  final pulumi.Input<String> sourceServer;
  /// Source server version
  final pulumi.Input<String> sourceServerVersion;
  /// Migration start time
  final pulumi.Input<String> startedOn;
  /// Target server name
  final pulumi.Input<String> targetServer;
  /// Target server version
  final pulumi.Input<String> targetServerVersion;

  /// Creates a new [MigrateSqlServerSqlDbSyncTaskOutputMigrationLevelResponse].
  /// [databaseCount] Count of databases
  /// [endedOn] Migration end time
  /// [id] Result identifier
  /// [resultType] Result type
  /// [sourceServer] Source server name
  /// [sourceServerVersion] Source server version
  /// [startedOn] Migration start time
  /// [targetServer] Target server name
  /// [targetServerVersion] Target server version
  const MigrateSqlServerSqlDbSyncTaskOutputMigrationLevelResponse({
    required this.databaseCount,
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
      'databaseCount': databaseCount,
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

  factory MigrateSqlServerSqlDbSyncTaskOutputMigrationLevelResponse.fromMap(Map<String, dynamic> map) {
    return MigrateSqlServerSqlDbSyncTaskOutputMigrationLevelResponse(
      databaseCount: pulumi.Input.fromValue(map['databaseCount'] as int),
      endedOn: pulumi.Input.fromValue(map['endedOn'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      resultType: pulumi.Input.fromValue(map['resultType'] as String),
      sourceServer: pulumi.Input.fromValue(map['sourceServer'] as String),
      sourceServerVersion: pulumi.Input.fromValue(map['sourceServerVersion'] as String),
      startedOn: pulumi.Input.fromValue(map['startedOn'] as String),
      targetServer: pulumi.Input.fromValue(map['targetServer'] as String),
      targetServerVersion: pulumi.Input.fromValue(map['targetServerVersion'] as String),
    );
  }
}

