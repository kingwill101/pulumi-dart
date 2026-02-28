// ignore_for_file: unused_element, unnecessary_cast

/// Metadata for a BigQuery connector used by the job.
class BigQueryIODetails {
  /// Dataset accessed in the connection.
  final String? dataset;

  /// Project accessed in the connection.
  final String? project;

  /// Query used to access data in the connection.
  final String? query;

  /// Table accessed in the connection.
  final String? table;

  /// Creates a new [BigQueryIODetails].
  /// [dataset] Dataset accessed in the connection.
  /// [project] Project accessed in the connection.
  /// [query] Query used to access data in the connection.
  /// [table] Table accessed in the connection.
  BigQueryIODetails({
    this.dataset,
    this.project,
    this.query,
    this.table,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final datasetValue = dataset;
    if (datasetValue != null) {
      map['dataset'] = datasetValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final queryValue = query;
    if (queryValue != null) {
      map['query'] = queryValue;
    }
    final tableValue = table;
    if (tableValue != null) {
      map['table'] = tableValue;
    }
    return map;
  }

  factory BigQueryIODetails.fromMap(Map<String, dynamic> map) {
    return BigQueryIODetails(
      dataset: map['dataset'] == null ? null : map['dataset'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      query: map['query'] == null ? null : map['query'] as String,
      table: map['table'] == null ? null : map['table'] as String,
    );
  }
}
