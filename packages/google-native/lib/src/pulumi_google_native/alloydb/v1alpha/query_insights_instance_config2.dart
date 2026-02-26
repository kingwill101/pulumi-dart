// ignore_for_file: unused_element, unnecessary_cast

/// QueryInsights Instance specific configuration.
class QueryInsightsInstanceConfig2 {
  /// Number of query execution plans captured by Insights per minute for all queries combined. The default value is 5. Any integer between 0 and 20 is considered valid.
  final int? queryPlansPerMinute;

  /// Query string length. The default value is 1024. Any integer between 256 and 4500 is considered valid.
  final int? queryStringLength;

  /// Record application tags for an instance. This flag is turned "on" by default.
  final bool? recordApplicationTags;

  /// Record client address for an instance. Client address is PII information. This flag is turned "on" by default.
  final bool? recordClientAddress;

  QueryInsightsInstanceConfig2({
    this.queryPlansPerMinute,
    this.queryStringLength,
    this.recordApplicationTags,
    this.recordClientAddress,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
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

  factory QueryInsightsInstanceConfig2.fromMap(Map<String, dynamic> map) {
    return QueryInsightsInstanceConfig2(
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
