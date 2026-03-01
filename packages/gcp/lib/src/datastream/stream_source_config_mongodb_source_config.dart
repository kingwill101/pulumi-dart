// ignore_for_file: unused_element, unnecessary_cast

import 'stream_source_config_mongodb_source_config_exclude_objects.dart';
import 'stream_source_config_mongodb_source_config_include_objects.dart';

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

  /// Creates a new [StreamSourceConfigMongodbSourceConfig].
  /// [excludeObjects] MongoDB collections to include in the stream.
  /// [includeObjects] MongoDB collections to include in the stream.
  /// [maxConcurrentBackfillTasks] Optional. Maximum number of concurrent backfill tasks. The number
  StreamSourceConfigMongodbSourceConfig({
    this.excludeObjects,
    this.includeObjects,
    this.maxConcurrentBackfillTasks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'excludeObjects': ?excludeObjects == null
          ? null
          : excludeObjects!.toMap(),
      'includeObjects': ?includeObjects == null
          ? null
          : includeObjects!.toMap(),
      'maxConcurrentBackfillTasks': ?maxConcurrentBackfillTasks,
    };
  }

  factory StreamSourceConfigMongodbSourceConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return StreamSourceConfigMongodbSourceConfig(
      excludeObjects: map['excludeObjects'] == null
          ? null
          : StreamSourceConfigMongodbSourceConfigExcludeObjects.fromMap(
              (map['excludeObjects'] as Map).cast<String, dynamic>(),
            ),
      includeObjects: map['includeObjects'] == null
          ? null
          : StreamSourceConfigMongodbSourceConfigIncludeObjects.fromMap(
              (map['includeObjects'] as Map).cast<String, dynamic>(),
            ),
      maxConcurrentBackfillTasks: map['maxConcurrentBackfillTasks'] == null
          ? null
          : map['maxConcurrentBackfillTasks'] as int,
    );
  }
}
