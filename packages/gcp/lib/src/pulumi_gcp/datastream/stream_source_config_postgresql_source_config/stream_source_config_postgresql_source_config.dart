// ignore_for_file: unused_element, unnecessary_cast

import '../stream_source_config_postgresql_source_config_exclude_objects/stream_source_config_postgresql_source_config_exclude_objects.dart';
import '../stream_source_config_postgresql_source_config_include_objects/stream_source_config_postgresql_source_config_include_objects.dart';

class StreamSourceConfigPostgresqlSourceConfig {
  /// PostgreSQL objects to exclude from the stream.
  /// Structure is documented below.
  final StreamSourceConfigPostgresqlSourceConfigExcludeObjects? excludeObjects;

  /// PostgreSQL objects to retrieve from the source.
  /// Structure is documented below.
  final StreamSourceConfigPostgresqlSourceConfigIncludeObjects? includeObjects;

  /// Maximum number of concurrent backfill tasks. The number should be non
  /// negative. If not set (or set to 0), the system's default value will be used.
  final int? maxConcurrentBackfillTasks;

  /// The name of the publication that includes the set of all tables
  /// that are defined in the stream's include_objects.
  final String publication;

  /// The name of the logical replication slot that's configured with
  /// the pgoutput plugin.
  final String replicationSlot;

  StreamSourceConfigPostgresqlSourceConfig({
    this.excludeObjects,
    this.includeObjects,
    this.maxConcurrentBackfillTasks,
    required this.publication,
    required this.replicationSlot,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
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
    map['publication'] = publication;
    map['replicationSlot'] = replicationSlot;
    return map;
  }

  factory StreamSourceConfigPostgresqlSourceConfig.fromMap(
      Map<String, dynamic> map) {
    return StreamSourceConfigPostgresqlSourceConfig(
      excludeObjects: map['excludeObjects'] == null
          ? null
          : StreamSourceConfigPostgresqlSourceConfigExcludeObjects.fromMap(
              (map['excludeObjects'] as Map).cast<String, dynamic>()),
      includeObjects: map['includeObjects'] == null
          ? null
          : StreamSourceConfigPostgresqlSourceConfigIncludeObjects.fromMap(
              (map['includeObjects'] as Map).cast<String, dynamic>()),
      maxConcurrentBackfillTasks: map['maxConcurrentBackfillTasks'] == null
          ? null
          : map['maxConcurrentBackfillTasks'] as int,
      publication: map['publication'] as String,
      replicationSlot: map['replicationSlot'] as String,
    );
  }
}
