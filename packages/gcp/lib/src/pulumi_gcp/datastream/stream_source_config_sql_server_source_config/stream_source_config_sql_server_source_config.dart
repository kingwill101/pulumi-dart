// ignore_for_file: unused_element, unnecessary_cast

import '../stream_source_config_sql_server_source_config_exclude_objects/stream_source_config_sql_server_source_config_exclude_objects.dart';
import '../stream_source_config_sql_server_source_config_include_objects/stream_source_config_sql_server_source_config_include_objects.dart';

class StreamSourceConfigSqlServerSourceConfig {
  /// CDC reader reads from change tables.
  final Map<String, dynamic>? changeTables;

  /// SQL Server objects to exclude from the stream.
  /// Structure is documented below.
  final StreamSourceConfigSqlServerSourceConfigExcludeObjects? excludeObjects;

  /// SQL Server objects to retrieve from the source.
  /// Structure is documented below.
  final StreamSourceConfigSqlServerSourceConfigIncludeObjects? includeObjects;

  /// Max concurrent backfill tasks.
  final int? maxConcurrentBackfillTasks;

  /// Max concurrent CDC tasks.
  final int? maxConcurrentCdcTasks;

  /// CDC reader reads from transaction logs.
  final Map<String, dynamic>? transactionLogs;

  StreamSourceConfigSqlServerSourceConfig({
    this.changeTables,
    this.excludeObjects,
    this.includeObjects,
    this.maxConcurrentBackfillTasks,
    this.maxConcurrentCdcTasks,
    this.transactionLogs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final changeTablesValue = changeTables;
    if (changeTablesValue != null) {
      map['changeTables'] = changeTablesValue;
    }
    final excludeObjectsValue = excludeObjects;
    if (excludeObjectsValue != null) {
      map['excludeObjects'] = excludeObjectsValue.toMap();
    }
    final includeObjectsValue = includeObjects;
    if (includeObjectsValue != null) {
      map['includeObjects'] = includeObjectsValue.toMap();
    }
    final maxConcurrentBackfillTasksValue = maxConcurrentBackfillTasks;
    if (maxConcurrentBackfillTasksValue != null) {
      map['maxConcurrentBackfillTasks'] = maxConcurrentBackfillTasksValue;
    }
    final maxConcurrentCdcTasksValue = maxConcurrentCdcTasks;
    if (maxConcurrentCdcTasksValue != null) {
      map['maxConcurrentCdcTasks'] = maxConcurrentCdcTasksValue;
    }
    final transactionLogsValue = transactionLogs;
    if (transactionLogsValue != null) {
      map['transactionLogs'] = transactionLogsValue;
    }
    return map;
  }

  factory StreamSourceConfigSqlServerSourceConfig.fromMap(
      Map<String, dynamic> map) {
    return StreamSourceConfigSqlServerSourceConfig(
      changeTables: map['changeTables'] == null
          ? null
          : (map['changeTables'] as Map).cast<String, dynamic>(),
      excludeObjects: map['excludeObjects'] == null
          ? null
          : StreamSourceConfigSqlServerSourceConfigExcludeObjects.fromMap(
              (map['excludeObjects'] as Map).cast<String, dynamic>()),
      includeObjects: map['includeObjects'] == null
          ? null
          : StreamSourceConfigSqlServerSourceConfigIncludeObjects.fromMap(
              (map['includeObjects'] as Map).cast<String, dynamic>()),
      maxConcurrentBackfillTasks: map['maxConcurrentBackfillTasks'] == null
          ? null
          : map['maxConcurrentBackfillTasks'] as int,
      maxConcurrentCdcTasks: map['maxConcurrentCdcTasks'] == null
          ? null
          : map['maxConcurrentCdcTasks'] as int,
      transactionLogs: map['transactionLogs'] == null
          ? null
          : (map['transactionLogs'] as Map).cast<String, dynamic>(),
    );
  }
}
