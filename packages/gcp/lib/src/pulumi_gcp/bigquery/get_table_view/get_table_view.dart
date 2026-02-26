// ignore_for_file: unused_element, unnecessary_cast

class GetTableView {
  /// A query that BigQuery executes when the view is referenced.
  final String query;

  /// Specifies whether to use BigQuery's legacy SQL for this view. If set to false, the view will use BigQuery's standard SQL
  final bool useLegacySql;

  GetTableView({
    required this.query,
    required this.useLegacySql,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['query'] = query;
    map['useLegacySql'] = useLegacySql;
    return map;
  }

  factory GetTableView.fromMap(Map<String, dynamic> map) {
    return GetTableView(
      query: map['query'] as String,
      useLegacySql: map['useLegacySql'] as bool,
    );
  }
}
