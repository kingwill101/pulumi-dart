// ignore_for_file: unused_element, unnecessary_cast

/// QueryOverride. Query message defines query override for HTTP targets.
class QueryOverride {
  /// The query parameters (e.g., qparam1=123&qparam2=456). Default is an empty string.
  final String? queryParams;

  /// Creates a new [QueryOverride].
  /// [queryParams] The query parameters (e.g., qparam1=123&qparam2=456). Default is an empty string.
  QueryOverride({this.queryParams});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'queryParams': ?queryParams};
  }

  factory QueryOverride.fromMap(Map<String, dynamic> map) {
    return QueryOverride(
      queryParams: map['queryParams'] == null
          ? null
          : map['queryParams'] as String,
    );
  }
}
