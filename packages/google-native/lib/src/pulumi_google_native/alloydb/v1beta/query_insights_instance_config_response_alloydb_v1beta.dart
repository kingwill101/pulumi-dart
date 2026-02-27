// ignore_for_file: unused_element, unnecessary_cast

/// QueryInsights Instance specific configuration.
class QueryInsightsInstanceConfigResponseAlloydbV1beta {
  /// Number of query execution plans captured by Insights per minute for all queries combined. The default value is 5. Any integer between 0 and 20 is considered valid.
  final int queryPlansPerMinute;

  /// Query string length. The default value is 1024. Any integer between 256 and 4500 is considered valid.
  final int queryStringLength;

  /// Record application tags for an instance. This flag is turned "on" by default.
  final bool recordApplicationTags;

  /// Record client address for an instance. Client address is PII information. This flag is turned "on" by default.
  final bool recordClientAddress;

  QueryInsightsInstanceConfigResponseAlloydbV1beta({
    required this.queryPlansPerMinute,
    required this.queryStringLength,
    required this.recordApplicationTags,
    required this.recordClientAddress,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['queryPlansPerMinute'] = queryPlansPerMinute;
    map['queryStringLength'] = queryStringLength;
    map['recordApplicationTags'] = recordApplicationTags;
    map['recordClientAddress'] = recordClientAddress;
    return map;
  }

  factory QueryInsightsInstanceConfigResponseAlloydbV1beta.fromMap(
      Map<String, dynamic> map) {
    return QueryInsightsInstanceConfigResponseAlloydbV1beta(
      queryPlansPerMinute: map['queryPlansPerMinute'] as int,
      queryStringLength: map['queryStringLength'] as int,
      recordApplicationTags: map['recordApplicationTags'] as bool,
      recordClientAddress: map['recordClientAddress'] as bool,
    );
  }
}
