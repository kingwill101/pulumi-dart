// ignore_for_file: unused_element, unnecessary_cast

/// Insights configuration. This specifies when Cloud SQL Insights feature is enabled and optional configuration.
class InsightsConfigResponse {
  /// Whether Query Insights feature is enabled.
  final bool queryInsightsEnabled;

  /// Number of query execution plans captured by Insights per minute for all queries combined. Default is 5.
  final int queryPlansPerMinute;

  /// Maximum query length stored in bytes. Default value: 1024 bytes. Range: 256-4500 bytes. Query length more than this field value will be truncated to this value. When unset, query length will be the default value. Changing query length will restart the database.
  final int queryStringLength;

  /// Whether Query Insights will record application tags from query when enabled.
  final bool recordApplicationTags;

  /// Whether Query Insights will record client address when enabled.
  final bool recordClientAddress;

  InsightsConfigResponse({
    required this.queryInsightsEnabled,
    required this.queryPlansPerMinute,
    required this.queryStringLength,
    required this.recordApplicationTags,
    required this.recordClientAddress,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['queryInsightsEnabled'] = queryInsightsEnabled;
    map['queryPlansPerMinute'] = queryPlansPerMinute;
    map['queryStringLength'] = queryStringLength;
    map['recordApplicationTags'] = recordApplicationTags;
    map['recordClientAddress'] = recordClientAddress;
    return map;
  }

  factory InsightsConfigResponse.fromMap(Map<String, dynamic> map) {
    return InsightsConfigResponse(
      queryInsightsEnabled: map['queryInsightsEnabled'] as bool,
      queryPlansPerMinute: map['queryPlansPerMinute'] as int,
      queryStringLength: map['queryStringLength'] as int,
      recordApplicationTags: map['recordApplicationTags'] as bool,
      recordClientAddress: map['recordClientAddress'] as bool,
    );
  }
}
