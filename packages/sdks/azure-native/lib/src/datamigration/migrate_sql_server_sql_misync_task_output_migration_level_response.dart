// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MigrateSqlServerSqlMISyncTaskOutputMigrationLevelResponse {
  /// Count of databases
  final pulumi.Input<int> databaseCount;
  /// Number of database level errors
  final pulumi.Input<int> databaseErrorCount;
  /// Migration end time
  final pulumi.Input<String> endedOn;
  /// Result identifier
  final pulumi.Input<String> id;
  /// Result type
  /// Expected value is 'MigrationLevelOutput'.
  final pulumi.Input<String> resultType;
  /// Source server brand version
  final pulumi.Input<String> sourceServerBrandVersion;
  /// Source server name
  final pulumi.Input<String> sourceServerName;
  /// Source server version
  final pulumi.Input<String> sourceServerVersion;
  /// Migration start time
  final pulumi.Input<String> startedOn;
  /// Current state of migration
  final pulumi.Input<String> state;
  /// Target server brand version
  final pulumi.Input<String> targetServerBrandVersion;
  /// Target server name
  final pulumi.Input<String> targetServerName;
  /// Target server version
  final pulumi.Input<String> targetServerVersion;

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
  const MigrateSqlServerSqlMISyncTaskOutputMigrationLevelResponse({
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
      databaseCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['databaseCount'])),
      databaseErrorCount: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['databaseErrorCount'])),
      endedOn: pulumi.Input.fromValue(map['endedOn'] as String),
      id: pulumi.Input.fromValue(map['id'] as String),
      resultType: pulumi.Input.fromValue(map['resultType'] as String),
      sourceServerBrandVersion: pulumi.Input.fromValue(map['sourceServerBrandVersion'] as String),
      sourceServerName: pulumi.Input.fromValue(map['sourceServerName'] as String),
      sourceServerVersion: pulumi.Input.fromValue(map['sourceServerVersion'] as String),
      startedOn: pulumi.Input.fromValue(map['startedOn'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
      targetServerBrandVersion: pulumi.Input.fromValue(map['targetServerBrandVersion'] as String),
      targetServerName: pulumi.Input.fromValue(map['targetServerName'] as String),
      targetServerVersion: pulumi.Input.fromValue(map['targetServerVersion'] as String),
    );
  }
}
