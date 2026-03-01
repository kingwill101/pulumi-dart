// ignore_for_file: unused_element, unnecessary_cast


class GetSearchIndexesIndex {
  /// The creation time of the index.
  final int createTime;
  /// Timestamp for sync phase.
  final int currentSyncTimestamp;
  /// The resource ID. The value is `<instance_name>:<table_name>:<indexName>:<indexType>`.
  final String id;
  /// The index name of the OTS Table which could not be changed.
  final String indexName;
  /// The name of OTS instance.
  final String instanceName;
  /// Last update time for metering data..
  final int meteringLastUpdateTime;
  /// Reserve related resources for the index.
  final int reservedReadCu;
  /// The number of rows of data for index.
  final int rowCount;
  /// JSON representation of the schema of index.
  final String schema;
  /// Storage space occupied by index.
  final int storageSize;
  /// The synchronization state of the index.
  final String syncPhase;
  /// The name of OTS table.
  final String tableName;
  /// TTL of index.
  final int timeToLive;

  /// Creates a new [GetSearchIndexesIndex].
  /// [createTime] The creation time of the index.
  /// [currentSyncTimestamp] Timestamp for sync phase.
  /// [id] The resource ID. The value is `<instance_name>:<table_name>:<indexName>:<indexType>`.
  /// [indexName] The index name of the OTS Table which could not be changed.
  /// [instanceName] The name of OTS instance.
  /// [meteringLastUpdateTime] Last update time for metering data..
  /// [reservedReadCu] Reserve related resources for the index.
  /// [rowCount] The number of rows of data for index.
  /// [schema] JSON representation of the schema of index.
  /// [storageSize] Storage space occupied by index.
  /// [syncPhase] The synchronization state of the index.
  /// [tableName] The name of OTS table.
  /// [timeToLive] TTL of index.
  GetSearchIndexesIndex({
    required this.createTime,
    required this.currentSyncTimestamp,
    required this.id,
    required this.indexName,
    required this.instanceName,
    required this.meteringLastUpdateTime,
    required this.reservedReadCu,
    required this.rowCount,
    required this.schema,
    required this.storageSize,
    required this.syncPhase,
    required this.tableName,
    required this.timeToLive,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': createTime,
      'currentSyncTimestamp': currentSyncTimestamp,
      'id': id,
      'indexName': indexName,
      'instanceName': instanceName,
      'meteringLastUpdateTime': meteringLastUpdateTime,
      'reservedReadCu': reservedReadCu,
      'rowCount': rowCount,
      'schema': schema,
      'storageSize': storageSize,
      'syncPhase': syncPhase,
      'tableName': tableName,
      'timeToLive': timeToLive,
    };
  }

  factory GetSearchIndexesIndex.fromMap(Map<String, dynamic> map) {
    return GetSearchIndexesIndex(
      createTime: map['createTime'] as int,
      currentSyncTimestamp: map['currentSyncTimestamp'] as int,
      id: map['id'] as String,
      indexName: map['indexName'] as String,
      instanceName: map['instanceName'] as String,
      meteringLastUpdateTime: map['meteringLastUpdateTime'] as int,
      reservedReadCu: map['reservedReadCu'] as int,
      rowCount: map['rowCount'] as int,
      schema: map['schema'] as String,
      storageSize: map['storageSize'] as int,
      syncPhase: map['syncPhase'] as String,
      tableName: map['tableName'] as String,
      timeToLive: map['timeToLive'] as int,
    );
  }
}

