// ignore_for_file: unused_element, unnecessary_cast

class DatabaseInstanceSettingsInsightsConfig {
  /// True if Query Insights feature is enabled.
  final bool? queryInsightsEnabled;

  /// Number of query execution plans captured by Insights per minute for all queries combined. Between 0 and 20. Default to 5.
  final int? queryPlansPerMinute;

  /// Maximum query length stored in bytes. Between 256 and 4500. Default to 1024. Higher query lengths are more useful for analytical queries, but they also require more memory. Changing the query length requires you to restart the instance. You can still add tags to queries that exceed the length limit.
  final int? queryStringLength;

  /// True if Query Insights will record application tags from query when enabled.
  final bool? recordApplicationTags;

  /// True if Query Insights will record client address when enabled.
  final bool? recordClientAddress;

  /// Creates a new [DatabaseInstanceSettingsInsightsConfig].
  /// [queryInsightsEnabled] True if Query Insights feature is enabled.
  /// [queryPlansPerMinute] Number of query execution plans captured by Insights per minute for all queries combined. Between 0 and 20. Default to 5.
  /// [queryStringLength] Maximum query length stored in bytes. Between 256 and 4500. Default to 1024. Higher query lengths are more useful for analytical queries, but they also require more memory. Changing the query length requires you to restart the instance. You can still add tags to queries that exceed the length limit.
  /// [recordApplicationTags] True if Query Insights will record application tags from query when enabled.
  /// [recordClientAddress] True if Query Insights will record client address when enabled.
  DatabaseInstanceSettingsInsightsConfig({
    this.queryInsightsEnabled,
    this.queryPlansPerMinute,
    this.queryStringLength,
    this.recordApplicationTags,
    this.recordClientAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'queryInsightsEnabled': ?queryInsightsEnabled,
      'queryPlansPerMinute': ?queryPlansPerMinute,
      'queryStringLength': ?queryStringLength,
      'recordApplicationTags': ?recordApplicationTags,
      'recordClientAddress': ?recordClientAddress,
    };
  }

  factory DatabaseInstanceSettingsInsightsConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return DatabaseInstanceSettingsInsightsConfig(
      queryInsightsEnabled: map['queryInsightsEnabled'] == null
          ? null
          : map['queryInsightsEnabled'] as bool,
      queryPlansPerMinute: map['queryPlansPerMinute'] == null
          ? null
          : map['queryPlansPerMinute'] as int,
      queryStringLength: map['queryStringLength'] == null
          ? null
          : map['queryStringLength'] as int,
      recordApplicationTags: map['recordApplicationTags'] == null
          ? null
          : map['recordApplicationTags'] as bool,
      recordClientAddress: map['recordClientAddress'] == null
          ? null
          : map['recordClientAddress'] as bool,
    );
  }
}
