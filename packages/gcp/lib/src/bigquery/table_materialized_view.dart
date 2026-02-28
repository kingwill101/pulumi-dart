// ignore_for_file: unused_element, unnecessary_cast

class TableMaterializedView {
  /// Allow non incremental materialized view definition.
  /// The default value is false.
  final bool? allowNonIncrementalDefinition;

  /// Specifies whether to use BigQuery's automatic refresh for this materialized view when the base table is updated.
  /// The default value is true.
  final bool? enableRefresh;

  /// A query whose result is persisted.
  final String query;

  /// The maximum frequency at which this materialized view will be refreshed.
  /// The default value is 1800000
  final int? refreshIntervalMs;

  /// Creates a new [TableMaterializedView].
  /// [allowNonIncrementalDefinition] Allow non incremental materialized view definition.
  /// [enableRefresh] Specifies whether to use BigQuery's automatic refresh for this materialized view when the base table is updated.
  /// [query] A query whose result is persisted.
  /// [refreshIntervalMs] The maximum frequency at which this materialized view will be refreshed.
  TableMaterializedView({
    this.allowNonIncrementalDefinition,
    this.enableRefresh,
    required this.query,
    this.refreshIntervalMs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowNonIncrementalDefinitionValue = allowNonIncrementalDefinition;
    if (allowNonIncrementalDefinitionValue != null) {
      map['allowNonIncrementalDefinition'] = allowNonIncrementalDefinitionValue;
    }
    final enableRefreshValue = enableRefresh;
    if (enableRefreshValue != null) {
      map['enableRefresh'] = enableRefreshValue;
    }
    map['query'] = query;
    final refreshIntervalMsValue = refreshIntervalMs;
    if (refreshIntervalMsValue != null) {
      map['refreshIntervalMs'] = refreshIntervalMsValue;
    }
    return map;
  }

  factory TableMaterializedView.fromMap(Map<String, dynamic> map) {
    return TableMaterializedView(
      allowNonIncrementalDefinition:
          map['allowNonIncrementalDefinition'] == null
              ? null
              : map['allowNonIncrementalDefinition'] as bool,
      enableRefresh:
          map['enableRefresh'] == null ? null : map['enableRefresh'] as bool,
      query: map['query'] as String,
      refreshIntervalMs: map['refreshIntervalMs'] == null
          ? null
          : map['refreshIntervalMs'] as int,
    );
  }
}
