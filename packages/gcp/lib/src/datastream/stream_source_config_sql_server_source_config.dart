// ignore_for_file: unused_element, unnecessary_cast

import 'stream_source_config_sql_server_source_config_exclude_objects.dart';
import 'stream_source_config_sql_server_source_config_include_objects.dart';

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

  /// Creates a new [StreamSourceConfigSqlServerSourceConfig].
  /// [changeTables] CDC reader reads from change tables.
  /// [excludeObjects] SQL Server objects to exclude from the stream.
  /// [includeObjects] SQL Server objects to retrieve from the source.
  /// [maxConcurrentBackfillTasks] Max concurrent backfill tasks.
  /// [maxConcurrentCdcTasks] Max concurrent CDC tasks.
  /// [transactionLogs] CDC reader reads from transaction logs.
  StreamSourceConfigSqlServerSourceConfig({
    this.changeTables,
    this.excludeObjects,
    this.includeObjects,
    this.maxConcurrentBackfillTasks,
    this.maxConcurrentCdcTasks,
    this.transactionLogs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'changeTables': ?changeTables,
      'excludeObjects': ?excludeObjects == null
          ? null
          : excludeObjects!.toMap(),
      'includeObjects': ?includeObjects == null
          ? null
          : includeObjects!.toMap(),
      'maxConcurrentBackfillTasks': ?maxConcurrentBackfillTasks,
      'maxConcurrentCdcTasks': ?maxConcurrentCdcTasks,
      'transactionLogs': ?transactionLogs,
    };
  }

  factory StreamSourceConfigSqlServerSourceConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return StreamSourceConfigSqlServerSourceConfig(
      changeTables: map['changeTables'] == null
          ? null
          : (map['changeTables'] as Map).cast<String, dynamic>(),
      excludeObjects: map['excludeObjects'] == null
          ? null
          : StreamSourceConfigSqlServerSourceConfigExcludeObjects.fromMap(
              (map['excludeObjects'] as Map).cast<String, dynamic>(),
            ),
      includeObjects: map['includeObjects'] == null
          ? null
          : StreamSourceConfigSqlServerSourceConfigIncludeObjects.fromMap(
              (map['includeObjects'] as Map).cast<String, dynamic>(),
            ),
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
