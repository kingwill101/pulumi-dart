// ignore_for_file: unused_element, unnecessary_cast

import 'mysql_rdbms_response.dart';

/// MySQL source configuration
class MysqlSourceConfigResponse {
  /// MySQL objects to exclude from the stream.
  final MysqlRdbmsResponse excludeObjects;

  /// MySQL objects to retrieve from the source.
  final MysqlRdbmsResponse includeObjects;

  /// Maximum number of concurrent backfill tasks. The number should be non negative. If not set (or set to 0), the system's default value will be used.
  final int maxConcurrentBackfillTasks;

  /// Maximum number of concurrent CDC tasks. The number should be non negative. If not set (or set to 0), the system's default value will be used.
  final int maxConcurrentCdcTasks;

  /// Creates a new [MysqlSourceConfigResponse].
  /// [excludeObjects] MySQL objects to exclude from the stream.
  /// [includeObjects] MySQL objects to retrieve from the source.
  /// [maxConcurrentBackfillTasks] Maximum number of concurrent backfill tasks. The number should be non negative. If not set (or set to 0), the system's default value will be used.
  /// [maxConcurrentCdcTasks] Maximum number of concurrent CDC tasks. The number should be non negative. If not set (or set to 0), the system's default value will be used.
  MysqlSourceConfigResponse({
    required this.excludeObjects,
    required this.includeObjects,
    required this.maxConcurrentBackfillTasks,
    required this.maxConcurrentCdcTasks,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['excludeObjects'] = excludeObjects.toMap();
    map['includeObjects'] = includeObjects.toMap();
    map['maxConcurrentBackfillTasks'] = maxConcurrentBackfillTasks;
    map['maxConcurrentCdcTasks'] = maxConcurrentCdcTasks;
    return map;
  }

  factory MysqlSourceConfigResponse.fromMap(Map<String, dynamic> map) {
    return MysqlSourceConfigResponse(
      excludeObjects: MysqlRdbmsResponse.fromMap(
          (map['excludeObjects'] as Map).cast<String, dynamic>()),
      includeObjects: MysqlRdbmsResponse.fromMap(
          (map['includeObjects'] as Map).cast<String, dynamic>()),
      maxConcurrentBackfillTasks: map['maxConcurrentBackfillTasks'] as int,
      maxConcurrentCdcTasks: map['maxConcurrentCdcTasks'] as int,
    );
  }
}
