// ignore_for_file: unused_element, unnecessary_cast

class TableView {
  /// A query that BigQuery executes when the view is referenced.
  final String query;

  /// Specifies whether to use BigQuery's legacy SQL for this view.
  /// If set to <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>, the view will use BigQuery's standard SQL. If set to
  /// <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, the view will use BigQuery's legacy SQL. If unset, the API will
  /// interpret it as a <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> and assumes the legacy SQL dialect for its query
  /// according to the [API documentation](https://cloud.google.com/bigquery/docs/reference/rest/v2/tables#ViewDefinition).
  /// > **Note**: Starting in provider version `7.0.0`, no default value is
  /// provided for this field unless explicitly set in the configuration.
  final bool? useLegacySql;

  TableView({
    required this.query,
    this.useLegacySql,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['query'] = query;
    final useLegacySqlValue = useLegacySql;
    if (useLegacySqlValue != null) {
      map['useLegacySql'] = useLegacySqlValue;
    }
    return map;
  }

  factory TableView.fromMap(Map<String, dynamic> map) {
    return TableView(
      query: map['query'] as String,
      useLegacySql:
          map['useLegacySql'] == null ? null : map['useLegacySql'] as bool,
    );
  }
}
