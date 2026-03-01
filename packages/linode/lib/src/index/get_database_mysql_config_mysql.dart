// ignore_for_file: unused_element, unnecessary_cast

import 'get_database_mysql_config_mysql_connect_timeout.dart';
import 'get_database_mysql_config_mysql_default_time_zone.dart';
import 'get_database_mysql_config_mysql_group_concat_max_len.dart';
import 'get_database_mysql_config_mysql_information_schema_stats_expiry.dart';
import 'get_database_mysql_config_mysql_innodb_change_buffer_max_size.dart';
import 'get_database_mysql_config_mysql_innodb_flush_neighbors.dart';
import 'get_database_mysql_config_mysql_innodb_ft_min_token_size.dart';
import 'get_database_mysql_config_mysql_innodb_ft_server_stopword_table.dart';
import 'get_database_mysql_config_mysql_innodb_lock_wait_timeout.dart';
import 'get_database_mysql_config_mysql_innodb_log_buffer_size.dart';
import 'get_database_mysql_config_mysql_innodb_online_alter_log_max_size.dart';
import 'get_database_mysql_config_mysql_innodb_read_io_threads.dart';
import 'get_database_mysql_config_mysql_innodb_rollback_on_timeout.dart';
import 'get_database_mysql_config_mysql_innodb_thread_concurrency.dart';
import 'get_database_mysql_config_mysql_innodb_write_io_threads.dart';
import 'get_database_mysql_config_mysql_interactive_timeout.dart';
import 'get_database_mysql_config_mysql_internal_tmp_mem_storage_engine.dart';
import 'get_database_mysql_config_mysql_max_allowed_packet.dart';
import 'get_database_mysql_config_mysql_max_heap_table_size.dart';
import 'get_database_mysql_config_mysql_net_buffer_length.dart';
import 'get_database_mysql_config_mysql_net_read_timeout.dart';
import 'get_database_mysql_config_mysql_net_write_timeout.dart';
import 'get_database_mysql_config_mysql_sort_buffer_size.dart';
import 'get_database_mysql_config_mysql_sql_mode.dart';
import 'get_database_mysql_config_mysql_sql_require_primary_key.dart';
import 'get_database_mysql_config_mysql_tmp_table_size.dart';
import 'get_database_mysql_config_mysql_wait_timeout.dart';

class GetDatabaseMysqlConfigMysql {
  final GetDatabaseMysqlConfigMysqlConnectTimeout connectTimeout;
  final GetDatabaseMysqlConfigMysqlDefaultTimeZone defaultTimeZone;
  final GetDatabaseMysqlConfigMysqlGroupConcatMaxLen groupConcatMaxLen;
  final GetDatabaseMysqlConfigMysqlInformationSchemaStatsExpiry informationSchemaStatsExpiry;
  final GetDatabaseMysqlConfigMysqlInnodbChangeBufferMaxSize innodbChangeBufferMaxSize;
  final GetDatabaseMysqlConfigMysqlInnodbFlushNeighbors innodbFlushNeighbors;
  final GetDatabaseMysqlConfigMysqlInnodbFtMinTokenSize innodbFtMinTokenSize;
  final GetDatabaseMysqlConfigMysqlInnodbFtServerStopwordTable innodbFtServerStopwordTable;
  final GetDatabaseMysqlConfigMysqlInnodbLockWaitTimeout innodbLockWaitTimeout;
  final GetDatabaseMysqlConfigMysqlInnodbLogBufferSize innodbLogBufferSize;
  final GetDatabaseMysqlConfigMysqlInnodbOnlineAlterLogMaxSize innodbOnlineAlterLogMaxSize;
  final GetDatabaseMysqlConfigMysqlInnodbReadIoThreads innodbReadIoThreads;
  final GetDatabaseMysqlConfigMysqlInnodbRollbackOnTimeout innodbRollbackOnTimeout;
  final GetDatabaseMysqlConfigMysqlInnodbThreadConcurrency innodbThreadConcurrency;
  final GetDatabaseMysqlConfigMysqlInnodbWriteIoThreads innodbWriteIoThreads;
  final GetDatabaseMysqlConfigMysqlInteractiveTimeout interactiveTimeout;
  final GetDatabaseMysqlConfigMysqlInternalTmpMemStorageEngine internalTmpMemStorageEngine;
  final GetDatabaseMysqlConfigMysqlMaxAllowedPacket maxAllowedPacket;
  final GetDatabaseMysqlConfigMysqlMaxHeapTableSize maxHeapTableSize;
  final GetDatabaseMysqlConfigMysqlNetBufferLength netBufferLength;
  final GetDatabaseMysqlConfigMysqlNetReadTimeout netReadTimeout;
  final GetDatabaseMysqlConfigMysqlNetWriteTimeout netWriteTimeout;
  final GetDatabaseMysqlConfigMysqlSortBufferSize sortBufferSize;
  final GetDatabaseMysqlConfigMysqlSqlMode sqlMode;
  final GetDatabaseMysqlConfigMysqlSqlRequirePrimaryKey sqlRequirePrimaryKey;
  final GetDatabaseMysqlConfigMysqlTmpTableSize tmpTableSize;
  final GetDatabaseMysqlConfigMysqlWaitTimeout waitTimeout;

  /// Creates a new [GetDatabaseMysqlConfigMysql].
  /// [connectTimeout] Required.
  /// [defaultTimeZone] Required.
  /// [groupConcatMaxLen] Required.
  /// [informationSchemaStatsExpiry] Required.
  /// [innodbChangeBufferMaxSize] Required.
  /// [innodbFlushNeighbors] Required.
  /// [innodbFtMinTokenSize] Required.
  /// [innodbFtServerStopwordTable] Required.
  /// [innodbLockWaitTimeout] Required.
  /// [innodbLogBufferSize] Required.
  /// [innodbOnlineAlterLogMaxSize] Required.
  /// [innodbReadIoThreads] Required.
  /// [innodbRollbackOnTimeout] Required.
  /// [innodbThreadConcurrency] Required.
  /// [innodbWriteIoThreads] Required.
  /// [interactiveTimeout] Required.
  /// [internalTmpMemStorageEngine] Required.
  /// [maxAllowedPacket] Required.
  /// [maxHeapTableSize] Required.
  /// [netBufferLength] Required.
  /// [netReadTimeout] Required.
  /// [netWriteTimeout] Required.
  /// [sortBufferSize] Required.
  /// [sqlMode] Required.
  /// [sqlRequirePrimaryKey] Required.
  /// [tmpTableSize] Required.
  /// [waitTimeout] Required.
  GetDatabaseMysqlConfigMysql({
    required this.connectTimeout,
    required this.defaultTimeZone,
    required this.groupConcatMaxLen,
    required this.informationSchemaStatsExpiry,
    required this.innodbChangeBufferMaxSize,
    required this.innodbFlushNeighbors,
    required this.innodbFtMinTokenSize,
    required this.innodbFtServerStopwordTable,
    required this.innodbLockWaitTimeout,
    required this.innodbLogBufferSize,
    required this.innodbOnlineAlterLogMaxSize,
    required this.innodbReadIoThreads,
    required this.innodbRollbackOnTimeout,
    required this.innodbThreadConcurrency,
    required this.innodbWriteIoThreads,
    required this.interactiveTimeout,
    required this.internalTmpMemStorageEngine,
    required this.maxAllowedPacket,
    required this.maxHeapTableSize,
    required this.netBufferLength,
    required this.netReadTimeout,
    required this.netWriteTimeout,
    required this.sortBufferSize,
    required this.sqlMode,
    required this.sqlRequirePrimaryKey,
    required this.tmpTableSize,
    required this.waitTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectTimeout': connectTimeout.toMap(),
      'defaultTimeZone': defaultTimeZone.toMap(),
      'groupConcatMaxLen': groupConcatMaxLen.toMap(),
      'informationSchemaStatsExpiry': informationSchemaStatsExpiry.toMap(),
      'innodbChangeBufferMaxSize': innodbChangeBufferMaxSize.toMap(),
      'innodbFlushNeighbors': innodbFlushNeighbors.toMap(),
      'innodbFtMinTokenSize': innodbFtMinTokenSize.toMap(),
      'innodbFtServerStopwordTable': innodbFtServerStopwordTable.toMap(),
      'innodbLockWaitTimeout': innodbLockWaitTimeout.toMap(),
      'innodbLogBufferSize': innodbLogBufferSize.toMap(),
      'innodbOnlineAlterLogMaxSize': innodbOnlineAlterLogMaxSize.toMap(),
      'innodbReadIoThreads': innodbReadIoThreads.toMap(),
      'innodbRollbackOnTimeout': innodbRollbackOnTimeout.toMap(),
      'innodbThreadConcurrency': innodbThreadConcurrency.toMap(),
      'innodbWriteIoThreads': innodbWriteIoThreads.toMap(),
      'interactiveTimeout': interactiveTimeout.toMap(),
      'internalTmpMemStorageEngine': internalTmpMemStorageEngine.toMap(),
      'maxAllowedPacket': maxAllowedPacket.toMap(),
      'maxHeapTableSize': maxHeapTableSize.toMap(),
      'netBufferLength': netBufferLength.toMap(),
      'netReadTimeout': netReadTimeout.toMap(),
      'netWriteTimeout': netWriteTimeout.toMap(),
      'sortBufferSize': sortBufferSize.toMap(),
      'sqlMode': sqlMode.toMap(),
      'sqlRequirePrimaryKey': sqlRequirePrimaryKey.toMap(),
      'tmpTableSize': tmpTableSize.toMap(),
      'waitTimeout': waitTimeout.toMap(),
    };
  }

  factory GetDatabaseMysqlConfigMysql.fromMap(Map<String, dynamic> map) {
    return GetDatabaseMysqlConfigMysql(
      connectTimeout: GetDatabaseMysqlConfigMysqlConnectTimeout.fromMap((map['connectTimeout'] as Map).cast<String, dynamic>()),
      defaultTimeZone: GetDatabaseMysqlConfigMysqlDefaultTimeZone.fromMap((map['defaultTimeZone'] as Map).cast<String, dynamic>()),
      groupConcatMaxLen: GetDatabaseMysqlConfigMysqlGroupConcatMaxLen.fromMap((map['groupConcatMaxLen'] as Map).cast<String, dynamic>()),
      informationSchemaStatsExpiry: GetDatabaseMysqlConfigMysqlInformationSchemaStatsExpiry.fromMap((map['informationSchemaStatsExpiry'] as Map).cast<String, dynamic>()),
      innodbChangeBufferMaxSize: GetDatabaseMysqlConfigMysqlInnodbChangeBufferMaxSize.fromMap((map['innodbChangeBufferMaxSize'] as Map).cast<String, dynamic>()),
      innodbFlushNeighbors: GetDatabaseMysqlConfigMysqlInnodbFlushNeighbors.fromMap((map['innodbFlushNeighbors'] as Map).cast<String, dynamic>()),
      innodbFtMinTokenSize: GetDatabaseMysqlConfigMysqlInnodbFtMinTokenSize.fromMap((map['innodbFtMinTokenSize'] as Map).cast<String, dynamic>()),
      innodbFtServerStopwordTable: GetDatabaseMysqlConfigMysqlInnodbFtServerStopwordTable.fromMap((map['innodbFtServerStopwordTable'] as Map).cast<String, dynamic>()),
      innodbLockWaitTimeout: GetDatabaseMysqlConfigMysqlInnodbLockWaitTimeout.fromMap((map['innodbLockWaitTimeout'] as Map).cast<String, dynamic>()),
      innodbLogBufferSize: GetDatabaseMysqlConfigMysqlInnodbLogBufferSize.fromMap((map['innodbLogBufferSize'] as Map).cast<String, dynamic>()),
      innodbOnlineAlterLogMaxSize: GetDatabaseMysqlConfigMysqlInnodbOnlineAlterLogMaxSize.fromMap((map['innodbOnlineAlterLogMaxSize'] as Map).cast<String, dynamic>()),
      innodbReadIoThreads: GetDatabaseMysqlConfigMysqlInnodbReadIoThreads.fromMap((map['innodbReadIoThreads'] as Map).cast<String, dynamic>()),
      innodbRollbackOnTimeout: GetDatabaseMysqlConfigMysqlInnodbRollbackOnTimeout.fromMap((map['innodbRollbackOnTimeout'] as Map).cast<String, dynamic>()),
      innodbThreadConcurrency: GetDatabaseMysqlConfigMysqlInnodbThreadConcurrency.fromMap((map['innodbThreadConcurrency'] as Map).cast<String, dynamic>()),
      innodbWriteIoThreads: GetDatabaseMysqlConfigMysqlInnodbWriteIoThreads.fromMap((map['innodbWriteIoThreads'] as Map).cast<String, dynamic>()),
      interactiveTimeout: GetDatabaseMysqlConfigMysqlInteractiveTimeout.fromMap((map['interactiveTimeout'] as Map).cast<String, dynamic>()),
      internalTmpMemStorageEngine: GetDatabaseMysqlConfigMysqlInternalTmpMemStorageEngine.fromMap((map['internalTmpMemStorageEngine'] as Map).cast<String, dynamic>()),
      maxAllowedPacket: GetDatabaseMysqlConfigMysqlMaxAllowedPacket.fromMap((map['maxAllowedPacket'] as Map).cast<String, dynamic>()),
      maxHeapTableSize: GetDatabaseMysqlConfigMysqlMaxHeapTableSize.fromMap((map['maxHeapTableSize'] as Map).cast<String, dynamic>()),
      netBufferLength: GetDatabaseMysqlConfigMysqlNetBufferLength.fromMap((map['netBufferLength'] as Map).cast<String, dynamic>()),
      netReadTimeout: GetDatabaseMysqlConfigMysqlNetReadTimeout.fromMap((map['netReadTimeout'] as Map).cast<String, dynamic>()),
      netWriteTimeout: GetDatabaseMysqlConfigMysqlNetWriteTimeout.fromMap((map['netWriteTimeout'] as Map).cast<String, dynamic>()),
      sortBufferSize: GetDatabaseMysqlConfigMysqlSortBufferSize.fromMap((map['sortBufferSize'] as Map).cast<String, dynamic>()),
      sqlMode: GetDatabaseMysqlConfigMysqlSqlMode.fromMap((map['sqlMode'] as Map).cast<String, dynamic>()),
      sqlRequirePrimaryKey: GetDatabaseMysqlConfigMysqlSqlRequirePrimaryKey.fromMap((map['sqlRequirePrimaryKey'] as Map).cast<String, dynamic>()),
      tmpTableSize: GetDatabaseMysqlConfigMysqlTmpTableSize.fromMap((map['tmpTableSize'] as Map).cast<String, dynamic>()),
      waitTimeout: GetDatabaseMysqlConfigMysqlWaitTimeout.fromMap((map['waitTimeout'] as Map).cast<String, dynamic>()),
    );
  }
}

