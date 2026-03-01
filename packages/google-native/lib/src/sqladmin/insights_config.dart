// ignore_for_file: unused_element, unnecessary_cast

/// Insights configuration. This specifies when Cloud SQL Insights feature is enabled and optional configuration.
class InsightsConfig {
  /// Whether Query Insights feature is enabled.
  final bool? queryInsightsEnabled;

  /// Number of query execution plans captured by Insights per minute for all queries combined. Default is 5.
  final int? queryPlansPerMinute;

  /// Maximum query length stored in bytes. Default value: 1024 bytes. Range: 256-4500 bytes. Query length more than this field value will be truncated to this value. When unset, query length will be the default value. Changing query length will restart the database.
  final int? queryStringLength;

  /// Whether Query Insights will record application tags from query when enabled.
  final bool? recordApplicationTags;

  /// Whether Query Insights will record client address when enabled.
  final bool? recordClientAddress;

  /// Creates a new [InsightsConfig].
  /// [queryInsightsEnabled] Whether Query Insights feature is enabled.
  /// [queryPlansPerMinute] Number of query execution plans captured by Insights per minute for all queries combined. Default is 5.
  /// [queryStringLength] Maximum query length stored in bytes. Default value: 1024 bytes. Range: 256-4500 bytes. Query length more than this field value will be truncated to this value. When unset, query length will be the default value. Changing query length will restart the database.
  /// [recordApplicationTags] Whether Query Insights will record application tags from query when enabled.
  /// [recordClientAddress] Whether Query Insights will record client address when enabled.
  InsightsConfig({
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

  factory InsightsConfig.fromMap(Map<String, dynamic> map) {
    return InsightsConfig(
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
