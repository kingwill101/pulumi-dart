// ignore_for_file: unused_element, unnecessary_cast

/// Insights configuration. This specifies when Cloud SQL Insights feature is enabled and optional configuration.
class InsightsConfigSqladminV1beta4 {
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

  /// Creates a new [InsightsConfigSqladminV1beta4].
  /// [queryInsightsEnabled] Whether Query Insights feature is enabled.
  /// [queryPlansPerMinute] Number of query execution plans captured by Insights per minute for all queries combined. Default is 5.
  /// [queryStringLength] Maximum query length stored in bytes. Default value: 1024 bytes. Range: 256-4500 bytes. Query length more than this field value will be truncated to this value. When unset, query length will be the default value. Changing query length will restart the database.
  /// [recordApplicationTags] Whether Query Insights will record application tags from query when enabled.
  /// [recordClientAddress] Whether Query Insights will record client address when enabled.
  InsightsConfigSqladminV1beta4({
    this.queryInsightsEnabled,
    this.queryPlansPerMinute,
    this.queryStringLength,
    this.recordApplicationTags,
    this.recordClientAddress,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final queryInsightsEnabledValue = queryInsightsEnabled;
    if (queryInsightsEnabledValue != null) {
      map['queryInsightsEnabled'] = queryInsightsEnabledValue;
    }
    final queryPlansPerMinuteValue = queryPlansPerMinute;
    if (queryPlansPerMinuteValue != null) {
      map['queryPlansPerMinute'] = queryPlansPerMinuteValue;
    }
    final queryStringLengthValue = queryStringLength;
    if (queryStringLengthValue != null) {
      map['queryStringLength'] = queryStringLengthValue;
    }
    final recordApplicationTagsValue = recordApplicationTags;
    if (recordApplicationTagsValue != null) {
      map['recordApplicationTags'] = recordApplicationTagsValue;
    }
    final recordClientAddressValue = recordClientAddress;
    if (recordClientAddressValue != null) {
      map['recordClientAddress'] = recordClientAddressValue;
    }
    return map;
  }

  factory InsightsConfigSqladminV1beta4.fromMap(Map<String, dynamic> map) {
    return InsightsConfigSqladminV1beta4(
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
