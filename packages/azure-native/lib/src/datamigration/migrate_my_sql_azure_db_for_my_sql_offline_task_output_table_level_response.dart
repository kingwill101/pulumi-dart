// ignore_for_file: unused_element, unnecessary_cast


class MigrateMySqlAzureDbForMySqlOfflineTaskOutputTableLevelResponse {
  /// Migration end time
  final String endedOn;
  /// Wildcard string prefix to use for querying all errors of the item
  final String errorPrefix;
  /// Result identifier
  final String id;
  /// Number of successfully completed items
  final double itemsCompletedCount;
  /// Number of items
  final double itemsCount;
  /// Last time the storage was updated
  final String lastStorageUpdate;
  /// Name of the item
  final String objectName;
  /// Wildcard string prefix to use for querying all sub-tem results of the item
  final String resultPrefix;
  /// Result type
  /// Expected value is 'TableLevelOutput'.
  final String resultType;
  /// Migration start time
  final String startedOn;
  /// Current state of migration
  final String state;
  /// Status message
  final String statusMessage;

  /// Creates a new [MigrateMySqlAzureDbForMySqlOfflineTaskOutputTableLevelResponse].
  /// [endedOn] Migration end time
  /// [errorPrefix] Wildcard string prefix to use for querying all errors of the item
  /// [id] Result identifier
  /// [itemsCompletedCount] Number of successfully completed items
  /// [itemsCount] Number of items
  /// [lastStorageUpdate] Last time the storage was updated
  /// [objectName] Name of the item
  /// [resultPrefix] Wildcard string prefix to use for querying all sub-tem results of the item
  /// [resultType] Result type
  /// [startedOn] Migration start time
  /// [state] Current state of migration
  /// [statusMessage] Status message
  MigrateMySqlAzureDbForMySqlOfflineTaskOutputTableLevelResponse({
    required this.endedOn,
    required this.errorPrefix,
    required this.id,
    required this.itemsCompletedCount,
    required this.itemsCount,
    required this.lastStorageUpdate,
    required this.objectName,
    required this.resultPrefix,
    required this.resultType,
    required this.startedOn,
    required this.state,
    required this.statusMessage,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'endedOn': endedOn,
      'errorPrefix': errorPrefix,
      'id': id,
      'itemsCompletedCount': itemsCompletedCount,
      'itemsCount': itemsCount,
      'lastStorageUpdate': lastStorageUpdate,
      'objectName': objectName,
      'resultPrefix': resultPrefix,
      'resultType': resultType,
      'startedOn': startedOn,
      'state': state,
      'statusMessage': statusMessage,
    };
  }

  factory MigrateMySqlAzureDbForMySqlOfflineTaskOutputTableLevelResponse.fromMap(Map<String, dynamic> map) {
    return MigrateMySqlAzureDbForMySqlOfflineTaskOutputTableLevelResponse(
      endedOn: map['endedOn'] as String,
      errorPrefix: map['errorPrefix'] as String,
      id: map['id'] as String,
      itemsCompletedCount: map['itemsCompletedCount'] as double,
      itemsCount: map['itemsCount'] as double,
      lastStorageUpdate: map['lastStorageUpdate'] as String,
      objectName: map['objectName'] as String,
      resultPrefix: map['resultPrefix'] as String,
      resultType: map['resultType'] as String,
      startedOn: map['startedOn'] as String,
      state: map['state'] as String,
      statusMessage: map['statusMessage'] as String,
    );
  }
}

