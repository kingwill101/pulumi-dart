// ignore_for_file: unused_element, unnecessary_cast

/// Specifies a location to extract JWT from an API request.
class JwtLocation {
  /// Specifies cookie name to extract JWT token.
  final String? cookie;

  /// Specifies HTTP header name to extract JWT token.
  final String? header;

  /// Specifies URL query parameter name to extract JWT token.
  final String? query;

  /// The value prefix. The value format is "value_prefix{token}" Only applies to "in" header type. Must be empty for "in" query type. If not empty, the header value has to match (case sensitive) this prefix. If not matched, JWT will not be extracted. If matched, JWT will be extracted after the prefix is removed. For example, for "Authorization: Bearer {JWT}", value_prefix="Bearer " with a space at the end.
  final String? valuePrefix;

  /// Creates a new [JwtLocation].
  /// [cookie] Specifies cookie name to extract JWT token.
  /// [header] Specifies HTTP header name to extract JWT token.
  /// [query] Specifies URL query parameter name to extract JWT token.
  /// [valuePrefix] The value prefix. The value format is "value_prefix{token}" Only applies to "in" header type. Must be empty for "in" query type. If not empty, the header value has to match (case sensitive) this prefix. If not matched, JWT will not be extracted. If matched, JWT will be extracted after the prefix is removed. For example, for "Authorization: Bearer {JWT}", value_prefix="Bearer " with a space at the end.
  JwtLocation({this.cookie, this.header, this.query, this.valuePrefix});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cookie': ?cookie,
      'header': ?header,
      'query': ?query,
      'valuePrefix': ?valuePrefix,
    };
  }

  factory JwtLocation.fromMap(Map<String, dynamic> map) {
    return JwtLocation(
      cookie: map['cookie'] == null ? null : map['cookie'] as String,
      header: map['header'] == null ? null : map['header'] as String,
      query: map['query'] == null ? null : map['query'] as String,
      valuePrefix: map['valuePrefix'] == null
          ? null
          : map['valuePrefix'] as String,
    );
  }
}
