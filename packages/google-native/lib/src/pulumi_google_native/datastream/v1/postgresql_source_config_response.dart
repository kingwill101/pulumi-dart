// ignore_for_file: unused_element, unnecessary_cast

import 'postgresql_rdbms_response.dart';

/// PostgreSQL data source configuration
class PostgresqlSourceConfigResponse {
  /// PostgreSQL objects to exclude from the stream.
  final PostgresqlRdbmsResponse excludeObjects;

  /// PostgreSQL objects to include in the stream.
  final PostgresqlRdbmsResponse includeObjects;

  /// Maximum number of concurrent backfill tasks. The number should be non negative. If not set (or set to 0), the system's default value will be used.
  final int maxConcurrentBackfillTasks;

  /// The name of the publication that includes the set of all tables that are defined in the stream's include_objects.
  final String publication;

  /// Immutable. The name of the logical replication slot that's configured with the pgoutput plugin.
  final String replicationSlot;

  PostgresqlSourceConfigResponse({
    required this.excludeObjects,
    required this.includeObjects,
    required this.maxConcurrentBackfillTasks,
    required this.publication,
    required this.replicationSlot,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['excludeObjects'] = excludeObjects.toMap();
    map['includeObjects'] = includeObjects.toMap();
    map['maxConcurrentBackfillTasks'] = maxConcurrentBackfillTasks;
    map['publication'] = publication;
    map['replicationSlot'] = replicationSlot;
    return map;
  }

  factory PostgresqlSourceConfigResponse.fromMap(Map<String, dynamic> map) {
    return PostgresqlSourceConfigResponse(
      excludeObjects: PostgresqlRdbmsResponse.fromMap(
          (map['excludeObjects'] as Map).cast<String, dynamic>()),
      includeObjects: PostgresqlRdbmsResponse.fromMap(
          (map['includeObjects'] as Map).cast<String, dynamic>()),
      maxConcurrentBackfillTasks: map['maxConcurrentBackfillTasks'] as int,
      publication: map['publication'] as String,
      replicationSlot: map['replicationSlot'] as String,
    );
  }
}
