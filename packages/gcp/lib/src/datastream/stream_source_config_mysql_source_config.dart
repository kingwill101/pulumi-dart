// ignore_for_file: unused_element, unnecessary_cast

import 'stream_source_config_mysql_source_config_exclude_objects.dart';
import 'stream_source_config_mysql_source_config_include_objects.dart';

class StreamSourceConfigMysqlSourceConfig {
  /// CDC reader reads from binary logs replication cdc method.
  final Map<String, dynamic>? binaryLogPosition;

  /// MySQL objects to exclude from the stream.
  /// Structure is documented below.
  final StreamSourceConfigMysqlSourceConfigExcludeObjects? excludeObjects;

  /// CDC reader reads from gtid based replication.
  final Map<String, dynamic>? gtid;

  /// MySQL objects to retrieve from the source.
  /// Structure is documented below.
  final StreamSourceConfigMysqlSourceConfigIncludeObjects? includeObjects;

  /// Maximum number of concurrent backfill tasks. The number should be non negative.
  /// If not set (or set to 0), the system's default value will be used.
  final int? maxConcurrentBackfillTasks;

  /// Maximum number of concurrent CDC tasks. The number should be non negative.
  /// If not set (or set to 0), the system's default value will be used.
  final int? maxConcurrentCdcTasks;

  /// Creates a new [StreamSourceConfigMysqlSourceConfig].
  /// [binaryLogPosition] CDC reader reads from binary logs replication cdc method.
  /// [excludeObjects] MySQL objects to exclude from the stream.
  /// [gtid] CDC reader reads from gtid based replication.
  /// [includeObjects] MySQL objects to retrieve from the source.
  /// [maxConcurrentBackfillTasks] Maximum number of concurrent backfill tasks. The number should be non negative.
  /// [maxConcurrentCdcTasks] Maximum number of concurrent CDC tasks. The number should be non negative.
  StreamSourceConfigMysqlSourceConfig({
    this.binaryLogPosition,
    this.excludeObjects,
    this.gtid,
    this.includeObjects,
    this.maxConcurrentBackfillTasks,
    this.maxConcurrentCdcTasks,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final binaryLogPositionValue = binaryLogPosition;
    if (binaryLogPositionValue != null) {
      map['binaryLogPosition'] = binaryLogPositionValue;
    }
    final excludeObjectsValue = excludeObjects;
    if (excludeObjectsValue != null) {
      map['excludeObjects'] = excludeObjectsValue.toMap();
    }
    final gtidValue = gtid;
    if (gtidValue != null) {
      map['gtid'] = gtidValue;
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
    return map;
  }

  factory StreamSourceConfigMysqlSourceConfig.fromMap(
      Map<String, dynamic> map) {
    return StreamSourceConfigMysqlSourceConfig(
      binaryLogPosition: map['binaryLogPosition'] == null
          ? null
          : (map['binaryLogPosition'] as Map).cast<String, dynamic>(),
      excludeObjects: map['excludeObjects'] == null
          ? null
          : StreamSourceConfigMysqlSourceConfigExcludeObjects.fromMap(
              (map['excludeObjects'] as Map).cast<String, dynamic>()),
      gtid: map['gtid'] == null
          ? null
          : (map['gtid'] as Map).cast<String, dynamic>(),
      includeObjects: map['includeObjects'] == null
          ? null
          : StreamSourceConfigMysqlSourceConfigIncludeObjects.fromMap(
              (map['includeObjects'] as Map).cast<String, dynamic>()),
      maxConcurrentBackfillTasks: map['maxConcurrentBackfillTasks'] == null
          ? null
          : map['maxConcurrentBackfillTasks'] as int,
      maxConcurrentCdcTasks: map['maxConcurrentCdcTasks'] == null
          ? null
          : map['maxConcurrentCdcTasks'] as int,
    );
  }
}
