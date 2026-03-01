// ignore_for_file: unused_element, unnecessary_cast

class GetDatabaseInstancesInstanceSettingInsightsConfig {
  /// True if Query Insights feature is enabled.
  final bool queryInsightsEnabled;

  /// Number of query execution plans captured by Insights per minute for all queries combined. Between 0 and 20. Default to 5. For Enterprise Plus instances, from 0 to 200.
  final int queryPlansPerMinute;

  /// Maximum query length stored in bytes. Between 256 and 4500. Default to 1024. For Enterprise Plus instances, from 1 to 1048576.
  final int queryStringLength;

  /// True if Query Insights will record application tags from query when enabled.
  final bool recordApplicationTags;

  /// True if Query Insights will record client address when enabled.
  final bool recordClientAddress;

  /// Creates a new [GetDatabaseInstancesInstanceSettingInsightsConfig].
  /// [queryInsightsEnabled] True if Query Insights feature is enabled.
  /// [queryPlansPerMinute] Number of query execution plans captured by Insights per minute for all queries combined. Between 0 and 20. Default to 5. For Enterprise Plus instances, from 0 to 200.
  /// [queryStringLength] Maximum query length stored in bytes. Between 256 and 4500. Default to 1024. For Enterprise Plus instances, from 1 to 1048576.
  /// [recordApplicationTags] True if Query Insights will record application tags from query when enabled.
  /// [recordClientAddress] True if Query Insights will record client address when enabled.
  GetDatabaseInstancesInstanceSettingInsightsConfig({
    required this.queryInsightsEnabled,
    required this.queryPlansPerMinute,
    required this.queryStringLength,
    required this.recordApplicationTags,
    required this.recordClientAddress,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'queryInsightsEnabled': queryInsightsEnabled,
      'queryPlansPerMinute': queryPlansPerMinute,
      'queryStringLength': queryStringLength,
      'recordApplicationTags': recordApplicationTags,
      'recordClientAddress': recordClientAddress,
    };
  }

  factory GetDatabaseInstancesInstanceSettingInsightsConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetDatabaseInstancesInstanceSettingInsightsConfig(
      queryInsightsEnabled: map['queryInsightsEnabled'] as bool,
      queryPlansPerMinute: map['queryPlansPerMinute'] as int,
      queryStringLength: map['queryStringLength'] as int,
      recordApplicationTags: map['recordApplicationTags'] as bool,
      recordClientAddress: map['recordClientAddress'] as bool,
    );
  }
}
