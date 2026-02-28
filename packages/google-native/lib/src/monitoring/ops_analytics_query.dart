// ignore_for_file: unused_element, unnecessary_cast


/// Preview: A query that produces an aggregated response and supporting data. This is a preview feature and may be subject to change before final release.
class OpsAnalyticsQuery {
  /// A SQL query to fetch time series, category series, or numeric series data.
  final String? sql;

  /// Creates a new [OpsAnalyticsQuery].
  /// [sql] A SQL query to fetch time series, category series, or numeric series data.
  OpsAnalyticsQuery({
    this.sql,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'sql': ?sql,
    };
  }

  factory OpsAnalyticsQuery.fromMap(Map<String, dynamic> map) {
    return OpsAnalyticsQuery(
      sql: map['sql'] == null ? null : map['sql'] as String,
    );
  }
}

