// ignore_for_file: unused_element, unnecessary_cast


class MigrateMySqlAzureDbForMySqlSyncTaskOutputTableLevelResponse {
  /// Number of applied deletes
  final String cdcDeleteCounter;
  /// Number of applied inserts
  final String cdcInsertCounter;
  /// Number of applied updates
  final String cdcUpdateCounter;
  /// Number of data errors occurred
  final double dataErrorsCounter;
  /// Name of the database
  final String databaseName;
  /// Full load end time
  final String fullLoadEndedOn;
  /// Estimate to finish full load
  final String fullLoadEstFinishTime;
  /// Full load start time
  final String fullLoadStartedOn;
  /// Number of rows applied in full load
  final double fullLoadTotalRows;
  /// Result identifier
  final String id;
  /// Last modified time on target
  final String lastModifiedTime;
  /// Result type
  /// Expected value is 'TableLevelOutput'.
  final String resultType;
  /// Current state of the table migration
  final String state;
  /// Name of the table
  final String tableName;
  /// Total number of applied changes
  final double totalChangesApplied;

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
  MigrateMySqlAzureDbForMySqlSyncTaskOutputTableLevelResponse({
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
      cdcDeleteCounter: map['cdcDeleteCounter'] as String,
      cdcInsertCounter: map['cdcInsertCounter'] as String,
      cdcUpdateCounter: map['cdcUpdateCounter'] as String,
      dataErrorsCounter: map['dataErrorsCounter'] as double,
      databaseName: map['databaseName'] as String,
      fullLoadEndedOn: map['fullLoadEndedOn'] as String,
      fullLoadEstFinishTime: map['fullLoadEstFinishTime'] as String,
      fullLoadStartedOn: map['fullLoadStartedOn'] as String,
      fullLoadTotalRows: map['fullLoadTotalRows'] as double,
      id: map['id'] as String,
      lastModifiedTime: map['lastModifiedTime'] as String,
      resultType: map['resultType'] as String,
      state: map['state'] as String,
      tableName: map['tableName'] as String,
      totalChangesApplied: map['totalChangesApplied'] as double,
    );
  }
}

