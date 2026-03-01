// ignore_for_file: unused_element, unnecessary_cast

class GetTableMaterializedView {
  /// Allow non incremental materialized view definition. The default value is false.
  final bool allowNonIncrementalDefinition;

  /// Specifies if BigQuery should automatically refresh materialized view when the base table is updated. The default is true.
  final bool enableRefresh;

  /// A query whose result is persisted.
  final String query;

  /// Specifies maximum frequency at which this materialized view will be refreshed. The default is 1800000.
  final int refreshIntervalMs;

  /// Creates a new [GetTableMaterializedView].
  /// [allowNonIncrementalDefinition] Allow non incremental materialized view definition. The default value is false.
  /// [enableRefresh] Specifies if BigQuery should automatically refresh materialized view when the base table is updated. The default is true.
  /// [query] A query whose result is persisted.
  /// [refreshIntervalMs] Specifies maximum frequency at which this materialized view will be refreshed. The default is 1800000.
  GetTableMaterializedView({
    required this.allowNonIncrementalDefinition,
    required this.enableRefresh,
    required this.query,
    required this.refreshIntervalMs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowNonIncrementalDefinition': allowNonIncrementalDefinition,
      'enableRefresh': enableRefresh,
      'query': query,
      'refreshIntervalMs': refreshIntervalMs,
    };
  }

  factory GetTableMaterializedView.fromMap(Map<String, dynamic> map) {
    return GetTableMaterializedView(
      allowNonIncrementalDefinition:
          map['allowNonIncrementalDefinition'] as bool,
      enableRefresh: map['enableRefresh'] as bool,
      query: map['query'] as String,
      refreshIntervalMs: map['refreshIntervalMs'] as int,
    );
  }
}
