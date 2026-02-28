// ignore_for_file: unused_element, unnecessary_cast

class MaterializedViewDefinitionResponse {
  /// [Optional] Allow non incremental materialized view definition. The default value is "false".
  final bool allowNonIncrementalDefinition;

  /// [Optional] [TrustedTester] Enable automatic refresh of the materialized view when the base table is updated. The default value is "true".
  final bool enableRefresh;

  /// [TrustedTester] The time when this materialized view was last modified, in milliseconds since the epoch.
  final String lastRefreshTime;

  /// [Optional] Max staleness of data that could be returned when materizlized view is queried (formatted as Google SQL Interval type).
  final String maxStaleness;

  /// [Required] A query whose result is persisted.
  final String query;

  /// [Optional] [TrustedTester] The maximum frequency at which this materialized view will be refreshed. The default value is "1800000" (30 minutes).
  final String refreshIntervalMs;

  /// Creates a new [MaterializedViewDefinitionResponse].
  /// [allowNonIncrementalDefinition] [Optional] Allow non incremental materialized view definition. The default value is "false".
  /// [enableRefresh] [Optional] [TrustedTester] Enable automatic refresh of the materialized view when the base table is updated. The default value is "true".
  /// [lastRefreshTime] [TrustedTester] The time when this materialized view was last modified, in milliseconds since the epoch.
  /// [maxStaleness] [Optional] Max staleness of data that could be returned when materizlized view is queried (formatted as Google SQL Interval type).
  /// [query] [Required] A query whose result is persisted.
  /// [refreshIntervalMs] [Optional] [TrustedTester] The maximum frequency at which this materialized view will be refreshed. The default value is "1800000" (30 minutes).
  MaterializedViewDefinitionResponse({
    required this.allowNonIncrementalDefinition,
    required this.enableRefresh,
    required this.lastRefreshTime,
    required this.maxStaleness,
    required this.query,
    required this.refreshIntervalMs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allowNonIncrementalDefinition'] = allowNonIncrementalDefinition;
    map['enableRefresh'] = enableRefresh;
    map['lastRefreshTime'] = lastRefreshTime;
    map['maxStaleness'] = maxStaleness;
    map['query'] = query;
    map['refreshIntervalMs'] = refreshIntervalMs;
    return map;
  }

  factory MaterializedViewDefinitionResponse.fromMap(Map<String, dynamic> map) {
    return MaterializedViewDefinitionResponse(
      allowNonIncrementalDefinition:
          map['allowNonIncrementalDefinition'] as bool,
      enableRefresh: map['enableRefresh'] as bool,
      lastRefreshTime: map['lastRefreshTime'] as String,
      maxStaleness: map['maxStaleness'] as String,
      query: map['query'] as String,
      refreshIntervalMs: map['refreshIntervalMs'] as String,
    );
  }
}
