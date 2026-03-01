// ignore_for_file: unused_element, unnecessary_cast

class MaterializedViewDefinition {
  /// [Optional] Allow non incremental materialized view definition. The default value is "false".
  final bool? allowNonIncrementalDefinition;

  /// [Optional] [TrustedTester] Enable automatic refresh of the materialized view when the base table is updated. The default value is "true".
  final bool? enableRefresh;

  /// [Optional] Max staleness of data that could be returned when materizlized view is queried (formatted as Google SQL Interval type).
  final String? maxStaleness;

  /// [Required] A query whose result is persisted.
  final String? query;

  /// [Optional] [TrustedTester] The maximum frequency at which this materialized view will be refreshed. The default value is "1800000" (30 minutes).
  final String? refreshIntervalMs;

  /// Creates a new [MaterializedViewDefinition].
  /// [allowNonIncrementalDefinition] [Optional] Allow non incremental materialized view definition. The default value is "false".
  /// [enableRefresh] [Optional] [TrustedTester] Enable automatic refresh of the materialized view when the base table is updated. The default value is "true".
  /// [maxStaleness] [Optional] Max staleness of data that could be returned when materizlized view is queried (formatted as Google SQL Interval type).
  /// [query] [Required] A query whose result is persisted.
  /// [refreshIntervalMs] [Optional] [TrustedTester] The maximum frequency at which this materialized view will be refreshed. The default value is "1800000" (30 minutes).
  MaterializedViewDefinition({
    this.allowNonIncrementalDefinition,
    this.enableRefresh,
    this.maxStaleness,
    this.query,
    this.refreshIntervalMs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowNonIncrementalDefinition': ?allowNonIncrementalDefinition,
      'enableRefresh': ?enableRefresh,
      'maxStaleness': ?maxStaleness,
      'query': ?query,
      'refreshIntervalMs': ?refreshIntervalMs,
    };
  }

  factory MaterializedViewDefinition.fromMap(Map<String, dynamic> map) {
    return MaterializedViewDefinition(
      allowNonIncrementalDefinition:
          map['allowNonIncrementalDefinition'] == null
          ? null
          : map['allowNonIncrementalDefinition'] as bool,
      enableRefresh: map['enableRefresh'] == null
          ? null
          : map['enableRefresh'] as bool,
      maxStaleness: map['maxStaleness'] == null
          ? null
          : map['maxStaleness'] as String,
      query: map['query'] == null ? null : map['query'] as String,
      refreshIntervalMs: map['refreshIntervalMs'] == null
          ? null
          : map['refreshIntervalMs'] as String,
    );
  }
}
