// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'search_index_schema.dart';

/// Input properties used for looking up and filtering SearchIndex resources.
class SearchIndexState {
  /// The search index create time.
  final pulumi.Input<int>? createTime;

  /// The timestamp for sync phase.
  final pulumi.Input<int>? currentSyncTimestamp;

  /// The index id of the search index which could not be changed.
  final pulumi.Input<String>? indexId;

  /// The index name of the OTS Table. If changed, a new index would be created.
  final pulumi.Input<String>? indexName;

  /// The name of the OTS instance in which table will located.
  final pulumi.Input<String>? instanceName;

  /// The schema of the search index. If changed, a new index would be created. See `schema` below.
  final pulumi.Input<List<SearchIndexSchema>>? schemas;

  /// The search index sync phase. possible values: `Full`, `Incr`.
  final pulumi.Input<String>? syncPhase;

  /// The name of the OTS table. If changed, a new table would be created.
  final pulumi.Input<String>? tableName;

  /// The index type of the OTS Table. Specifies the retention period of data in the search index. Unit: seconds. Default value: -1.
  /// If the retention period exceeds the TTL value, OTS automatically deletes expired data.
  final pulumi.Input<int>? timeToLive;

  /// Creates a new [SearchIndexState].
  /// [createTime] The search index create time.
  /// [currentSyncTimestamp] The timestamp for sync phase.
  /// [indexId] The index id of the search index which could not be changed.
  /// [indexName] The index name of the OTS Table. If changed, a new index would be created.
  /// [instanceName] The name of the OTS instance in which table will located.
  /// [schemas] The schema of the search index. If changed, a new index would be created. See `schema` below.
  /// [syncPhase] The search index sync phase. possible values: `Full`, `Incr`.
  /// [tableName] The name of the OTS table. If changed, a new table would be created.
  /// [timeToLive] The index type of the OTS Table. Specifies the retention period of data in the search index. Unit: seconds. Default value: -1.
  SearchIndexState({
    this.createTime,
    this.currentSyncTimestamp,
    this.indexId,
    this.indexName,
    this.instanceName,
    this.schemas,
    this.syncPhase,
    this.tableName,
    this.timeToLive,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'createTime': ?createTime,
      'currentSyncTimestamp': ?currentSyncTimestamp,
      'indexId': ?indexId,
      'indexName': ?indexName,
      'instanceName': ?instanceName,
      'schemas':
          ?pulumi.Input.mapOptionalInputValue<
            List<SearchIndexSchema>,
            List<Map<String, dynamic>>
          >(
            schemas,
            (value) =>
                pulumi.Input.encodeList<
                  SearchIndexSchema,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'syncPhase': ?syncPhase,
      'tableName': ?tableName,
      'timeToLive': ?timeToLive,
    };
  }

  factory SearchIndexState.fromMap(Map<String, dynamic> map) {
    return SearchIndexState(
      createTime: (() {
        final guardedValue = map['createTime'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      currentSyncTimestamp: (() {
        final guardedValue = map['currentSyncTimestamp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      indexId: (() {
        final guardedValue = map['indexId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      indexName: (() {
        final guardedValue = map['indexName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      instanceName: (() {
        final guardedValue = map['instanceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      schemas: (() {
        final guardedValue = map['schemas'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<SearchIndexSchema>(
            guardedValue,
            (value) => SearchIndexSchema.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      syncPhase: (() {
        final guardedValue = map['syncPhase'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tableName: (() {
        final guardedValue = map['tableName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      timeToLive: (() {
        final guardedValue = map['timeToLive'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
