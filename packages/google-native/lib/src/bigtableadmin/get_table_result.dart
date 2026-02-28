// ignore_for_file: unused_element, unnecessary_cast

import 'change_stream_config_response.dart';
import 'restore_info_response.dart';
import 'table_stats_response.dart';

/// Result data returned by getTable.
class GetTableResult {
  /// If specified, enable the change stream on this table. Otherwise, the change stream is disabled and the change stream is not retained.
  final ChangeStreamConfigResponse changeStreamConfig;
  /// Map from cluster ID to per-cluster table state. If it could not be determined whether or not the table has data in a particular cluster (for example, if its zone is unavailable), then there will be an entry for the cluster with UNKNOWN `replication_status`. Views: `REPLICATION_VIEW`, `ENCRYPTION_VIEW`, `FULL`
  final Map<String, String> clusterStates;
  /// The column families configured for this table, mapped by column family ID. Views: `SCHEMA_VIEW`, `STATS_VIEW`, `FULL`
  final Map<String, String> columnFamilies;
  /// Set to true to make the table protected against data loss. i.e. deleting the following resources through Admin APIs are prohibited: * The table. * The column families in the table. * The instance containing the table. Note one can still delete the data stored in the table through Data APIs.
  final bool deletionProtection;
  /// Immutable. The granularity (i.e. `MILLIS`) at which timestamps are stored in this table. Timestamps not matching the granularity will be rejected. If unspecified at creation time, the value will be set to `MILLIS`. Views: `SCHEMA_VIEW`, `FULL`.
  final String granularity;
  /// The unique name of the table. Values are of the form `projects/{project}/instances/{instance}/tables/_a-zA-Z0-9*`. Views: `NAME_ONLY`, `SCHEMA_VIEW`, `REPLICATION_VIEW`, `STATS_VIEW`, `FULL`
  final String name;
  /// If this table was restored from another data source (e.g. a backup), this field will be populated with information about the restore.
  final RestoreInfoResponse restoreInfo;
  /// Only available with STATS_VIEW, this includes summary statistics about the entire table contents. For statistics about a specific column family, see ColumnFamilyStats in the mapped ColumnFamily collection above.
  final TableStatsResponse stats;

  /// Creates a new [GetTableResult].
  /// [changeStreamConfig] If specified, enable the change stream on this table. Otherwise, the change stream is disabled and the change stream is not retained.
  /// [clusterStates] Map from cluster ID to per-cluster table state. If it could not be determined whether or not the table has data in a particular cluster (for example, if its zone is unavailable), then there will be an entry for the cluster with UNKNOWN `replication_status`. Views: `REPLICATION_VIEW`, `ENCRYPTION_VIEW`, `FULL`
  /// [columnFamilies] The column families configured for this table, mapped by column family ID. Views: `SCHEMA_VIEW`, `STATS_VIEW`, `FULL`
  /// [deletionProtection] Set to true to make the table protected against data loss. i.e. deleting the following resources through Admin APIs are prohibited: * The table. * The column families in the table. * The instance containing the table. Note one can still delete the data stored in the table through Data APIs.
  /// [granularity] Immutable. The granularity (i.e. `MILLIS`) at which timestamps are stored in this table. Timestamps not matching the granularity will be rejected. If unspecified at creation time, the value will be set to `MILLIS`. Views: `SCHEMA_VIEW`, `FULL`.
  /// [name] The unique name of the table. Values are of the form `projects/{project}/instances/{instance}/tables/_a-zA-Z0-9*`. Views: `NAME_ONLY`, `SCHEMA_VIEW`, `REPLICATION_VIEW`, `STATS_VIEW`, `FULL`
  /// [restoreInfo] If this table was restored from another data source (e.g. a backup), this field will be populated with information about the restore.
  /// [stats] Only available with STATS_VIEW, this includes summary statistics about the entire table contents. For statistics about a specific column family, see ColumnFamilyStats in the mapped ColumnFamily collection above.
  GetTableResult({
    required this.changeStreamConfig,
    required this.clusterStates,
    required this.columnFamilies,
    required this.deletionProtection,
    required this.granularity,
    required this.name,
    required this.restoreInfo,
    required this.stats,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'changeStreamConfig': changeStreamConfig.toMap(),
      'clusterStates': clusterStates,
      'columnFamilies': columnFamilies,
      'deletionProtection': deletionProtection,
      'granularity': granularity,
      'name': name,
      'restoreInfo': restoreInfo.toMap(),
      'stats': stats.toMap(),
    };
  }

  factory GetTableResult.fromMap(Map<String, dynamic> map) {
    return GetTableResult(
      changeStreamConfig: ChangeStreamConfigResponse.fromMap((map['changeStreamConfig'] as Map).cast<String, dynamic>()),
      clusterStates: (map['clusterStates'] as Map).cast<String, String>(),
      columnFamilies: (map['columnFamilies'] as Map).cast<String, String>(),
      deletionProtection: map['deletionProtection'] as bool,
      granularity: map['granularity'] as String,
      name: map['name'] as String,
      restoreInfo: RestoreInfoResponse.fromMap((map['restoreInfo'] as Map).cast<String, dynamic>()),
      stats: TableStatsResponse.fromMap((map['stats'] as Map).cast<String, dynamic>()),
    );
  }
}

