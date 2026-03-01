// ignore_for_file: unused_element, unnecessary_cast


class GroupUserLogConfig {
  /// The jwt claims to be record, support multi jwt claims split by `,`. Set `*` to record all.
  final String? jwtClaims;
  /// The query params to be record, support multi query params split by `,`. Set `*` to record all.
  final String? queryString;
  /// Whether to record the request body.
  final bool? requestBody;
  /// The request headers to be record, support multi request headers split by `,`. Set `*` to record all.
  final String? requestHeaders;
  /// Whether to record the response body.
  final bool? responseBody;
  /// The response headers to be record, support multi response headers split by `,`. Set `*` to record all.
  final String? responseHeaders;

  /// Creates a new [GroupUserLogConfig].
  /// [jwtClaims] The jwt claims to be record, support multi jwt claims split by `,`. Set `*` to record all.
  /// [queryString] The query params to be record, support multi query params split by `,`. Set `*` to record all.
  /// [requestBody] Whether to record the request body.
  /// [requestHeaders] The request headers to be record, support multi request headers split by `,`. Set `*` to record all.
  /// [responseBody] Whether to record the response body.
  /// [responseHeaders] The response headers to be record, support multi response headers split by `,`. Set `*` to record all.
  GroupUserLogConfig({
    this.jwtClaims,
    this.queryString,
    this.requestBody,
    this.requestHeaders,
    this.responseBody,
    this.responseHeaders,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jwtClaims': ?jwtClaims,
      'queryString': ?queryString,
      'requestBody': ?requestBody,
      'requestHeaders': ?requestHeaders,
      'responseBody': ?responseBody,
      'responseHeaders': ?responseHeaders,
    };
  }

  factory GroupUserLogConfig.fromMap(Map<String, dynamic> map) {
    return GroupUserLogConfig(
      jwtClaims: map['jwtClaims'] == null ? null : map['jwtClaims'] as String,
      queryString: map['queryString'] == null ? null : map['queryString'] as String,
      requestBody: map['requestBody'] == null ? null : map['requestBody'] as bool,
      requestHeaders: map['requestHeaders'] == null ? null : map['requestHeaders'] as String,
      responseBody: map['responseBody'] == null ? null : map['responseBody'] as bool,
      responseHeaders: map['responseHeaders'] == null ? null : map['responseHeaders'] as String,
    );
  }
}

