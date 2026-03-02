// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MigrateMySqlAzureDbForMySqlSyncTaskOutputMigrationLevelResponse {
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
      endedOn: (map['endedOn'] as String).input(),
      id: (map['id'] as String).input(),
      resultType: (map['resultType'] as String).input(),
      sourceServer: (map['sourceServer'] as String).input(),
      sourceServerVersion: (map['sourceServerVersion'] as String).input(),
      startedOn: (map['startedOn'] as String).input(),
      targetServer: (map['targetServer'] as String).input(),
      targetServerVersion: (map['targetServerVersion'] as String).input(),
    );
  }
}

