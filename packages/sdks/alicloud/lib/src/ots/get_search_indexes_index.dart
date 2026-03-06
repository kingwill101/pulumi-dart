// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetSearchIndexesIndex {
  /// The creation time of the index.
  final pulumi.Input<int> createTime;
  /// Timestamp for sync phase.
  final pulumi.Input<int> currentSyncTimestamp;
  /// The resource ID. The value is `&lt;instance_name&gt;:&lt;table_name&gt;:&lt;indexName&gt;:&lt;indexType&gt;`.
  final pulumi.Input<String> id;
  /// The index name of the OTS Table which could not be changed.
  final pulumi.Input<String> indexName;
  /// The name of OTS instance.
  final pulumi.Input<String> instanceName;
  /// Last update time for metering data..
  final pulumi.Input<int> meteringLastUpdateTime;
  /// Reserve related resources for the index.
  final pulumi.Input<int> reservedReadCu;
  /// The number of rows of data for index.
  final pulumi.Input<int> rowCount;
  /// JSON representation of the schema of index.
  final pulumi.Input<String> schema;
  /// Storage space occupied by index.
  final pulumi.Input<int> storageSize;
  /// The synchronization state of the index.
  final pulumi.Input<String> syncPhase;
  /// The name of OTS table.
  final pulumi.Input<String> tableName;
  /// TTL of index.
  final pulumi.Input<int> timeToLive;

  /// Creates a new [GetSearchIndexesIndex].
  /// [createTime] The creation time of the index.
  /// [currentSyncTimestamp] Timestamp for sync phase.
  /// [id] The resource ID. The value is `&lt;instance_name&gt;:&lt;table_name&gt;:&lt;indexName&gt;:&lt;indexType&gt;`.
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
  const GetSearchIndexesIndex({
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
      createTime: pulumi.Input.fromValue(map['createTime'] as int),
      currentSyncTimestamp: pulumi.Input.fromValue(map['currentSyncTimestamp'] as int),
      id: pulumi.Input.fromValue(map['id'] as String),
      indexName: pulumi.Input.fromValue(map['indexName'] as String),
      instanceName: pulumi.Input.fromValue(map['instanceName'] as String),
      meteringLastUpdateTime: pulumi.Input.fromValue(map['meteringLastUpdateTime'] as int),
      reservedReadCu: pulumi.Input.fromValue(map['reservedReadCu'] as int),
      rowCount: pulumi.Input.fromValue(map['rowCount'] as int),
      schema: pulumi.Input.fromValue(map['schema'] as String),
      storageSize: pulumi.Input.fromValue(map['storageSize'] as int),
      syncPhase: pulumi.Input.fromValue(map['syncPhase'] as String),
      tableName: pulumi.Input.fromValue(map['tableName'] as String),
      timeToLive: pulumi.Input.fromValue(map['timeToLive'] as int),
    );
  }
}

