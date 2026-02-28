// ignore_for_file: unused_element, unnecessary_cast

import 'oracle_rdbms_response.dart';

/// Oracle data source configuration
class OracleSourceConfigResponse {
  /// Drop large object values.
  final Map<String, dynamic> dropLargeObjects;

  /// Oracle objects to exclude from the stream.
  final OracleRdbmsResponse excludeObjects;

  /// Oracle objects to include in the stream.
  final OracleRdbmsResponse includeObjects;

  /// Maximum number of concurrent backfill tasks. The number should be non-negative. If not set (or set to 0), the system's default value is used.
  final int maxConcurrentBackfillTasks;

  /// Maximum number of concurrent CDC tasks. The number should be non-negative. If not set (or set to 0), the system's default value is used.
  final int maxConcurrentCdcTasks;

  /// Stream large object values. NOTE: This feature is currently experimental.
  final Map<String, dynamic> streamLargeObjects;

  /// Creates a new [OracleSourceConfigResponse].
  /// [dropLargeObjects] Drop large object values.
  /// [excludeObjects] Oracle objects to exclude from the stream.
  /// [includeObjects] Oracle objects to include in the stream.
  /// [maxConcurrentBackfillTasks] Maximum number of concurrent backfill tasks. The number should be non-negative. If not set (or set to 0), the system's default value is used.
  /// [maxConcurrentCdcTasks] Maximum number of concurrent CDC tasks. The number should be non-negative. If not set (or set to 0), the system's default value is used.
  /// [streamLargeObjects] Stream large object values. NOTE: This feature is currently experimental.
  OracleSourceConfigResponse({
    required this.dropLargeObjects,
    required this.excludeObjects,
    required this.includeObjects,
    required this.maxConcurrentBackfillTasks,
    required this.maxConcurrentCdcTasks,
    required this.streamLargeObjects,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dropLargeObjects'] = dropLargeObjects;
    map['excludeObjects'] = excludeObjects.toMap();
    map['includeObjects'] = includeObjects.toMap();
    map['maxConcurrentBackfillTasks'] = maxConcurrentBackfillTasks;
    map['maxConcurrentCdcTasks'] = maxConcurrentCdcTasks;
    map['streamLargeObjects'] = streamLargeObjects;
    return map;
  }

  factory OracleSourceConfigResponse.fromMap(Map<String, dynamic> map) {
    return OracleSourceConfigResponse(
      dropLargeObjects:
          (map['dropLargeObjects'] as Map).cast<String, dynamic>(),
      excludeObjects: OracleRdbmsResponse.fromMap(
          (map['excludeObjects'] as Map).cast<String, dynamic>()),
      includeObjects: OracleRdbmsResponse.fromMap(
          (map['includeObjects'] as Map).cast<String, dynamic>()),
      maxConcurrentBackfillTasks: map['maxConcurrentBackfillTasks'] as int,
      maxConcurrentCdcTasks: map['maxConcurrentCdcTasks'] as int,
      streamLargeObjects:
          (map['streamLargeObjects'] as Map).cast<String, dynamic>(),
    );
  }
}
