// ignore_for_file: unused_element, unnecessary_cast


/// QueryOverride. Query message defines query override for HTTP targets.
class QueryOverrideCloudtasksV2beta3 {
  /// The query parameters (e.g., qparam1=123&qparam2=456). Default is an empty string.
  final String? queryParams;

  /// Creates a new [QueryOverrideCloudtasksV2beta3].
  /// [queryParams] The query parameters (e.g., qparam1=123&qparam2=456). Default is an empty string.
  QueryOverrideCloudtasksV2beta3({
    this.queryParams,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'queryParams': ?queryParams,
    };
  }

  factory QueryOverrideCloudtasksV2beta3.fromMap(Map<String, dynamic> map) {
    return QueryOverrideCloudtasksV2beta3(
      queryParams: map['queryParams'] == null ? null : map['queryParams'] as String,
    );
  }
}

