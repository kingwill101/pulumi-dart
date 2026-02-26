// ignore_for_file: unused_element, unnecessary_cast

/// Specifies a location to extract JWT from an API request.
class JwtLocationResponse {
  /// Specifies cookie name to extract JWT token.
  final String cookie;

  /// Specifies HTTP header name to extract JWT token.
  final String header;

  /// Specifies URL query parameter name to extract JWT token.
  final String query;

  /// The value prefix. The value format is "value_prefix{token}" Only applies to "in" header type. Must be empty for "in" query type. If not empty, the header value has to match (case sensitive) this prefix. If not matched, JWT will not be extracted. If matched, JWT will be extracted after the prefix is removed. For example, for "Authorization: Bearer {JWT}", value_prefix="Bearer " with a space at the end.
  final String valuePrefix;

  JwtLocationResponse({
    required this.cookie,
    required this.header,
    required this.query,
    required this.valuePrefix,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cookie'] = cookie;
    map['header'] = header;
    map['query'] = query;
    map['valuePrefix'] = valuePrefix;
    return map;
  }

  factory JwtLocationResponse.fromMap(Map<String, dynamic> map) {
    return JwtLocationResponse(
      cookie: map['cookie'] as String,
      header: map['header'] as String,
      query: map['query'] as String,
      valuePrefix: map['valuePrefix'] as String,
    );
  }
}
