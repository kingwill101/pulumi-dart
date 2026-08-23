// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MigratePostgreSqlAzureDbForPostgreSqlSyncTaskOutputMigrationLevelResponse {
  /// Number of databases to include
  final pulumi.Input<double>? databaseCount;
  /// Migration end time
  final pulumi.Input<String> endedOn;
  /// Result identifier
  final pulumi.Input<String> id;
  /// Result type
  /// Expected value is 'MigrationLevelOutput'.
  final pulumi.Input<String> resultType;
  /// Source server name
  final pulumi.Input<String> sourceServer;
  /// Source server type.
  final pulumi.Input<String> sourceServerType;
  /// Source server version
  final pulumi.Input<String> sourceServerVersion;
  /// Migration start time
  final pulumi.Input<String> startedOn;
  /// Migration status
  final pulumi.Input<String> state;
  /// Target server name
  final pulumi.Input<String> targetServer;
  /// Target server type.
  final pulumi.Input<String> targetServerType;
  /// Target server version
  final pulumi.Input<String> targetServerVersion;

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
  const MigratePostgreSqlAzureDbForPostgreSqlSyncTaskOutputMigrationLevelResponse({
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
      databaseCount: (() { final guardedValue = map['databaseCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      endedOn: pulumi.Input.fromValue(map['endedOn'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      resultType: pulumi.Input.fromValue(map['resultType'] as String),
      sourceServer: pulumi.Input.fromValue(map['sourceServer'] as String),
      sourceServerType: pulumi.Input.fromValue(map['sourceServerType'] as String),
      sourceServerVersion: pulumi.Input.fromValue(map['sourceServerVersion'] as String),
      startedOn: pulumi.Input.fromValue(map['startedOn'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
      targetServer: pulumi.Input.fromValue(map['targetServer'] as String),
      targetServerType: pulumi.Input.fromValue(map['targetServerType'] as String),
      targetServerVersion: pulumi.Input.fromValue(map['targetServerVersion'] as String),
    );
  }
}
