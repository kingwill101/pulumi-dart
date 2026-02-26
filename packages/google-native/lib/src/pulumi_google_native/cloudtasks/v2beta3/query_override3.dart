// ignore_for_file: unused_element, unnecessary_cast

/// QueryOverride. Query message defines query override for HTTP targets.
class QueryOverride3 {
  /// The query parameters (e.g., qparam1=123&qparam2=456). Default is an empty string.
  final String? queryParams;

  QueryOverride3({
    this.queryParams,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final queryParamsValue = queryParams;
    if (queryParamsValue != null) {
      map['queryParams'] = queryParamsValue;
    }
    return map;
  }

  factory QueryOverride3.fromMap(Map<String, dynamic> map) {
    return QueryOverride3(
      queryParams:
          map['queryParams'] == null ? null : map['queryParams'] as String,
    );
  }
}
