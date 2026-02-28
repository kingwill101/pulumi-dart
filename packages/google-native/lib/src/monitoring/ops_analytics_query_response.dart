// ignore_for_file: unused_element, unnecessary_cast


/// Preview: A query that produces an aggregated response and supporting data. This is a preview feature and may be subject to change before final release.
class OpsAnalyticsQueryResponse {
  /// A SQL query to fetch time series, category series, or numeric series data.
  final String sql;

  /// Creates a new [OpsAnalyticsQueryResponse].
  /// [sql] A SQL query to fetch time series, category series, or numeric series data.
  OpsAnalyticsQueryResponse({
    required this.sql,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sql': sql,
    };
  }

  factory OpsAnalyticsQueryResponse.fromMap(Map<String, dynamic> map) {
    return OpsAnalyticsQueryResponse(
      sql: map['sql'] as String,
    );
  }
}

