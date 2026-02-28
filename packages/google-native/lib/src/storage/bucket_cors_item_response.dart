// ignore_for_file: unused_element, unnecessary_cast

class BucketCorsItemResponse {
  /// The value, in seconds, to return in the  Access-Control-Max-Age header used in preflight responses.
  final int maxAgeSeconds;

  /// The list of HTTP methods on which to include CORS response headers, (GET, OPTIONS, POST, etc) Note: "*" is permitted in the list of methods, and means "any method".
  final List<String> method;

  /// The list of Origins eligible to receive CORS response headers. Note: "*" is permitted in the list of origins, and means "any Origin".
  final List<String> origin;

  /// The list of HTTP headers other than the simple response headers to give permission for the user-agent to share across domains.
  final List<String> responseHeader;

  /// Creates a new [BucketCorsItemResponse].
  /// [maxAgeSeconds] The value, in seconds, to return in the  Access-Control-Max-Age header used in preflight responses.
  /// [method] The list of HTTP methods on which to include CORS response headers, (GET, OPTIONS, POST, etc) Note: "*" is permitted in the list of methods, and means "any method".
  /// [origin] The list of Origins eligible to receive CORS response headers. Note: "*" is permitted in the list of origins, and means "any Origin".
  /// [responseHeader] The list of HTTP headers other than the simple response headers to give permission for the user-agent to share across domains.
  BucketCorsItemResponse({
    required this.maxAgeSeconds,
    required this.method,
    required this.origin,
    required this.responseHeader,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxAgeSeconds'] = maxAgeSeconds;
    map['method'] = method;
    map['origin'] = origin;
    map['responseHeader'] = responseHeader;
    return map;
  }

  factory BucketCorsItemResponse.fromMap(Map<String, dynamic> map) {
    return BucketCorsItemResponse(
      maxAgeSeconds: map['maxAgeSeconds'] as int,
      method: (map['method'] as List).cast<String>(),
      origin: (map['origin'] as List).cast<String>(),
      responseHeader: (map['responseHeader'] as List).cast<String>(),
    );
  }
}
