// ignore_for_file: unused_element, unnecessary_cast

/// QueryOverride. Query message defines query override for HTTP targets.
class QueryOverrideResponse {
  /// The query parameters (e.g., qparam1=123&qparam2=456). Default is an empty string.
  final String queryParams;

  /// Creates a new [QueryOverrideResponse].
  /// [queryParams] The query parameters (e.g., qparam1=123&qparam2=456). Default is an empty string.
  QueryOverrideResponse({
    required this.queryParams,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['queryParams'] = queryParams;
    return map;
  }

  factory QueryOverrideResponse.fromMap(Map<String, dynamic> map) {
    return QueryOverrideResponse(
      queryParams: map['queryParams'] as String,
    );
  }
}
