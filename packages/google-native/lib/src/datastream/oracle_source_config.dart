// ignore_for_file: unused_element, unnecessary_cast

import 'oracle_rdbms.dart';

/// Oracle data source configuration
class OracleSourceConfig {
  /// Drop large object values.
  final Map<String, dynamic>? dropLargeObjects;

  /// Oracle objects to exclude from the stream.
  final OracleRdbms? excludeObjects;

  /// Oracle objects to include in the stream.
  final OracleRdbms? includeObjects;

  /// Maximum number of concurrent backfill tasks. The number should be non-negative. If not set (or set to 0), the system's default value is used.
  final int? maxConcurrentBackfillTasks;

  /// Maximum number of concurrent CDC tasks. The number should be non-negative. If not set (or set to 0), the system's default value is used.
  final int? maxConcurrentCdcTasks;

  /// Stream large object values. NOTE: This feature is currently experimental.
  final Map<String, dynamic>? streamLargeObjects;

  /// Creates a new [OracleSourceConfig].
  /// [dropLargeObjects] Drop large object values.
  /// [excludeObjects] Oracle objects to exclude from the stream.
  /// [includeObjects] Oracle objects to include in the stream.
  /// [maxConcurrentBackfillTasks] Maximum number of concurrent backfill tasks. The number should be non-negative. If not set (or set to 0), the system's default value is used.
  /// [maxConcurrentCdcTasks] Maximum number of concurrent CDC tasks. The number should be non-negative. If not set (or set to 0), the system's default value is used.
  /// [streamLargeObjects] Stream large object values. NOTE: This feature is currently experimental.
  OracleSourceConfig({
    this.dropLargeObjects,
    this.excludeObjects,
    this.includeObjects,
    this.maxConcurrentBackfillTasks,
    this.maxConcurrentCdcTasks,
    this.streamLargeObjects,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final dropLargeObjectsValue = dropLargeObjects;
    if (dropLargeObjectsValue != null) {
      map['dropLargeObjects'] = dropLargeObjectsValue;
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
    final streamLargeObjectsValue = streamLargeObjects;
    if (streamLargeObjectsValue != null) {
      map['streamLargeObjects'] = streamLargeObjectsValue;
    }
    return map;
  }

  factory OracleSourceConfig.fromMap(Map<String, dynamic> map) {
    return OracleSourceConfig(
      dropLargeObjects: map['dropLargeObjects'] == null
          ? null
          : (map['dropLargeObjects'] as Map).cast<String, dynamic>(),
      excludeObjects: map['excludeObjects'] == null
          ? null
          : OracleRdbms.fromMap(
              (map['excludeObjects'] as Map).cast<String, dynamic>()),
      includeObjects: map['includeObjects'] == null
          ? null
          : OracleRdbms.fromMap(
              (map['includeObjects'] as Map).cast<String, dynamic>()),
      maxConcurrentBackfillTasks: map['maxConcurrentBackfillTasks'] == null
          ? null
          : map['maxConcurrentBackfillTasks'] as int,
      maxConcurrentCdcTasks: map['maxConcurrentCdcTasks'] == null
          ? null
          : map['maxConcurrentCdcTasks'] as int,
      streamLargeObjects: map['streamLargeObjects'] == null
          ? null
          : (map['streamLargeObjects'] as Map).cast<String, dynamic>(),
    );
  }
}
