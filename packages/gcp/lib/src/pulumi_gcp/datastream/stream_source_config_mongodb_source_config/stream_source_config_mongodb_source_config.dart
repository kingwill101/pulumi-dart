// ignore_for_file: unused_element, unnecessary_cast

import '../stream_source_config_mongodb_source_config_exclude_objects/stream_source_config_mongodb_source_config_exclude_objects.dart';
import '../stream_source_config_mongodb_source_config_include_objects/stream_source_config_mongodb_source_config_include_objects.dart';

class StreamSourceConfigMongodbSourceConfig {
  /// MongoDB collections to include in the stream.
  /// Structure is documented below.
  final StreamSourceConfigMongodbSourceConfigExcludeObjects? excludeObjects;

  /// MongoDB collections to include in the stream.
  /// Structure is documented below.
  final StreamSourceConfigMongodbSourceConfigIncludeObjects? includeObjects;

  /// Optional. Maximum number of concurrent backfill tasks. The number
  /// should be non-negative and less than or equal to 50. If not set
  /// (or set to 0), the system''s default value is used
  final int? maxConcurrentBackfillTasks;

  StreamSourceConfigMongodbSourceConfig({
    this.excludeObjects,
    this.includeObjects,
    this.maxConcurrentBackfillTasks,
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
    return map;
  }

  factory StreamSourceConfigMongodbSourceConfig.fromMap(
      Map<String, dynamic> map) {
    return StreamSourceConfigMongodbSourceConfig(
      excludeObjects: map['excludeObjects'] == null
          ? null
          : StreamSourceConfigMongodbSourceConfigExcludeObjects.fromMap(
              (map['excludeObjects'] as Map).cast<String, dynamic>()),
      includeObjects: map['includeObjects'] == null
          ? null
          : StreamSourceConfigMongodbSourceConfigIncludeObjects.fromMap(
              (map['includeObjects'] as Map).cast<String, dynamic>()),
      maxConcurrentBackfillTasks: map['maxConcurrentBackfillTasks'] == null
          ? null
          : map['maxConcurrentBackfillTasks'] as int,
    );
  }
}
