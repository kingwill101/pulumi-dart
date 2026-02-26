// ignore_for_file: unused_element, unnecessary_cast

/// Metadata for a BigQuery connector used by the job.
class BigQueryIODetailsResponse {
  /// Dataset accessed in the connection.
  final String dataset;

  /// Project accessed in the connection.
  final String project;

  /// Query used to access data in the connection.
  final String query;

  /// Table accessed in the connection.
  final String table;

  BigQueryIODetailsResponse({
    required this.dataset,
    required this.project,
    required this.query,
    required this.table,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['dataset'] = dataset;
    map['project'] = project;
    map['query'] = query;
    map['table'] = table;
    return map;
  }

  factory BigQueryIODetailsResponse.fromMap(Map<String, dynamic> map) {
    return BigQueryIODetailsResponse(
      dataset: map['dataset'] as String,
      project: map['project'] as String,
      query: map['query'] as String,
      table: map['table'] as String,
    );
  }
}
