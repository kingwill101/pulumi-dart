// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class MigrateMySqlAzureDbForMySqlSyncTaskOutputTableLevelResponse {
  /// Number of applied deletes
  final pulumi.Input<String> cdcDeleteCounter;
  /// Number of applied inserts
  final pulumi.Input<String> cdcInsertCounter;
  /// Number of applied updates
  final pulumi.Input<String> cdcUpdateCounter;
  /// Number of data errors occurred
  final pulumi.Input<double> dataErrorsCounter;
  /// Name of the database
  final pulumi.Input<String> databaseName;
  /// Full load end time
  final pulumi.Input<String> fullLoadEndedOn;
  /// Estimate to finish full load
  final pulumi.Input<String> fullLoadEstFinishTime;
  /// Full load start time
  final pulumi.Input<String> fullLoadStartedOn;
  /// Number of rows applied in full load
  final pulumi.Input<double> fullLoadTotalRows;
  /// Result identifier
  final pulumi.Input<String> id;
  /// Last modified time on target
  final pulumi.Input<String> lastModifiedTime;
  /// Result type
  /// Expected value is 'TableLevelOutput'.
  final pulumi.Input<String> resultType;
  /// Current state of the table migration
  final pulumi.Input<String> state;
  /// Name of the table
  final pulumi.Input<String> tableName;
  /// Total number of applied changes
  final pulumi.Input<double> totalChangesApplied;

  /// Creates a new [MigrateMySqlAzureDbForMySqlSyncTaskOutputTableLevelResponse].
  /// [cdcDeleteCounter] Number of applied deletes
  /// [cdcInsertCounter] Number of applied inserts
  /// [cdcUpdateCounter] Number of applied updates
  /// [dataErrorsCounter] Number of data errors occurred
  /// [databaseName] Name of the database
  /// [fullLoadEndedOn] Full load end time
  /// [fullLoadEstFinishTime] Estimate to finish full load
  /// [fullLoadStartedOn] Full load start time
  /// [fullLoadTotalRows] Number of rows applied in full load
  /// [id] Result identifier
  /// [lastModifiedTime] Last modified time on target
  /// [resultType] Result type
  /// [state] Current state of the table migration
  /// [tableName] Name of the table
  /// [totalChangesApplied] Total number of applied changes
  const MigrateMySqlAzureDbForMySqlSyncTaskOutputTableLevelResponse({
    required this.cdcDeleteCounter,
    required this.cdcInsertCounter,
    required this.cdcUpdateCounter,
    required this.dataErrorsCounter,
    required this.databaseName,
    required this.fullLoadEndedOn,
    required this.fullLoadEstFinishTime,
    required this.fullLoadStartedOn,
    required this.fullLoadTotalRows,
    required this.id,
    required this.lastModifiedTime,
    required this.resultType,
    required this.state,
    required this.tableName,
    required this.totalChangesApplied,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cdcDeleteCounter': cdcDeleteCounter,
      'cdcInsertCounter': cdcInsertCounter,
      'cdcUpdateCounter': cdcUpdateCounter,
      'dataErrorsCounter': dataErrorsCounter,
      'databaseName': databaseName,
      'fullLoadEndedOn': fullLoadEndedOn,
      'fullLoadEstFinishTime': fullLoadEstFinishTime,
      'fullLoadStartedOn': fullLoadStartedOn,
      'fullLoadTotalRows': fullLoadTotalRows,
      'id': id,
      'lastModifiedTime': lastModifiedTime,
      'resultType': resultType,
      'state': state,
      'tableName': tableName,
      'totalChangesApplied': totalChangesApplied,
    };
  }

  factory MigrateMySqlAzureDbForMySqlSyncTaskOutputTableLevelResponse.fromMap(Map<String, dynamic> map) {
    return MigrateMySqlAzureDbForMySqlSyncTaskOutputTableLevelResponse(
      cdcDeleteCounter: pulumi.Input.fromValue(map['cdcDeleteCounter'] as String),
      cdcInsertCounter: pulumi.Input.fromValue(map['cdcInsertCounter'] as String),
      cdcUpdateCounter: pulumi.Input.fromValue(map['cdcUpdateCounter'] as String),
      dataErrorsCounter: pulumi.Input.fromValue(map['dataErrorsCounter'] as double),
      databaseName: pulumi.Input.fromValue(map['databaseName'] as String),
      fullLoadEndedOn: pulumi.Input.fromValue(map['fullLoadEndedOn'] as String),
      fullLoadEstFinishTime: pulumi.Input.fromValue(map['fullLoadEstFinishTime'] as String),
      fullLoadStartedOn: pulumi.Input.fromValue(map['fullLoadStartedOn'] as String),
      fullLoadTotalRows: pulumi.Input.fromValue(map['fullLoadTotalRows'] as double),
      id: pulumi.Input.fromValue(map['id'] as String),
      lastModifiedTime: pulumi.Input.fromValue(map['lastModifiedTime'] as String),
      resultType: pulumi.Input.fromValue(map['resultType'] as String),
      state: pulumi.Input.fromValue(map['state'] as String),
      tableName: pulumi.Input.fromValue(map['tableName'] as String),
      totalChangesApplied: pulumi.Input.fromValue(map['totalChangesApplied'] as double),
    );
  }
}
