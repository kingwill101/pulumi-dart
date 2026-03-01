// ignore_for_file: unused_element, unnecessary_cast

import 'stream_source_config_oracle_source_config_exclude_objects.dart';
import 'stream_source_config_oracle_source_config_include_objects.dart';

class StreamSourceConfigOracleSourceConfig {
  /// Configuration to drop large object values.
  final Map<String, dynamic>? dropLargeObjects;

  /// Oracle objects to exclude from the stream.
  /// Structure is documented below.
  final StreamSourceConfigOracleSourceConfigExcludeObjects? excludeObjects;

  /// Oracle objects to retrieve from the source.
  /// Structure is documented below.
  final StreamSourceConfigOracleSourceConfigIncludeObjects? includeObjects;

  /// Maximum number of concurrent backfill tasks. The number should be non negative.
  /// If not set (or set to 0), the system's default value will be used.
  final int? maxConcurrentBackfillTasks;

  /// Maximum number of concurrent CDC tasks. The number should be non negative.
  /// If not set (or set to 0), the system's default value will be used.
  final int? maxConcurrentCdcTasks;

  /// Configuration to drop large object values.
  final Map<String, dynamic>? streamLargeObjects;

  /// Creates a new [StreamSourceConfigOracleSourceConfig].
  /// [dropLargeObjects] Configuration to drop large object values.
  /// [excludeObjects] Oracle objects to exclude from the stream.
  /// [includeObjects] Oracle objects to retrieve from the source.
  /// [maxConcurrentBackfillTasks] Maximum number of concurrent backfill tasks. The number should be non negative.
  /// [maxConcurrentCdcTasks] Maximum number of concurrent CDC tasks. The number should be non negative.
  /// [streamLargeObjects] Configuration to drop large object values.
  StreamSourceConfigOracleSourceConfig({
    this.dropLargeObjects,
    this.excludeObjects,
    this.includeObjects,
    this.maxConcurrentBackfillTasks,
    this.maxConcurrentCdcTasks,
    this.streamLargeObjects,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dropLargeObjects': ?dropLargeObjects,
      'excludeObjects': ?excludeObjects == null
          ? null
          : excludeObjects!.toMap(),
      'includeObjects': ?includeObjects == null
          ? null
          : includeObjects!.toMap(),
      'maxConcurrentBackfillTasks': ?maxConcurrentBackfillTasks,
      'maxConcurrentCdcTasks': ?maxConcurrentCdcTasks,
      'streamLargeObjects': ?streamLargeObjects,
    };
  }

  factory StreamSourceConfigOracleSourceConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return StreamSourceConfigOracleSourceConfig(
      dropLargeObjects: map['dropLargeObjects'] == null
          ? null
          : (map['dropLargeObjects'] as Map).cast<String, dynamic>(),
      excludeObjects: map['excludeObjects'] == null
          ? null
          : StreamSourceConfigOracleSourceConfigExcludeObjects.fromMap(
              (map['excludeObjects'] as Map).cast<String, dynamic>(),
            ),
      includeObjects: map['includeObjects'] == null
          ? null
          : StreamSourceConfigOracleSourceConfigIncludeObjects.fromMap(
              (map['includeObjects'] as Map).cast<String, dynamic>(),
            ),
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
