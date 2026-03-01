// ignore_for_file: unused_element, unnecessary_cast

class TableView {
  /// A query that BigQuery executes when the view is referenced.
  final String query;

  /// Specifies whether to use BigQuery's legacy SQL for this view.
  /// If set to `false`, the view will use BigQuery's standard SQL. If set to
  /// `true`, the view will use BigQuery's legacy SQL. If unset, the API will
  /// interpret it as a `true` and assumes the legacy SQL dialect for its query
  /// according to the [API documentation](https://cloud.google.com/bigquery/docs/reference/rest/v2/tables#ViewDefinition).
  /// > **Note**: Starting in provider version `7.0.0`, no default value is
  /// provided for this field unless explicitly set in the configuration.
  final bool? useLegacySql;

  /// Creates a new [TableView].
  /// [query] A query that BigQuery executes when the view is referenced.
  /// [useLegacySql] Specifies whether to use BigQuery's legacy SQL for this view.
  TableView({required this.query, this.useLegacySql});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'query': query, 'useLegacySql': ?useLegacySql};
  }

  factory TableView.fromMap(Map<String, dynamic> map) {
    return TableView(
      query: map['query'] as String,
      useLegacySql: map['useLegacySql'] == null
          ? null
          : map['useLegacySql'] as bool,
    );
  }
}
