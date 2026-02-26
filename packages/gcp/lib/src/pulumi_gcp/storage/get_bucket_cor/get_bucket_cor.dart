// ignore_for_file: unused_element, unnecessary_cast

class GetBucketCor {
  /// The value, in seconds, to return in the Access-Control-Max-Age header used in preflight responses.
  final int maxAgeSeconds;

  /// The list of HTTP methods on which to include CORS response headers, (GET, OPTIONS, POST, etc) Note: "*" is permitted in the list of methods, and means "any method".
  final List<String> methods;

  /// The list of Origins eligible to receive CORS response headers. Note: "*" is permitted in the list of origins, and means "any Origin".
  final List<String> origins;

  /// The list of HTTP headers other than the simple response headers to give permission for the user-agent to share across domains.
  final List<String> responseHeaders;

  GetBucketCor({
    required this.maxAgeSeconds,
    required this.methods,
    required this.origins,
    required this.responseHeaders,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['maxAgeSeconds'] = maxAgeSeconds;
    map['methods'] = methods;
    map['origins'] = origins;
    map['responseHeaders'] = responseHeaders;
    return map;
  }

  factory GetBucketCor.fromMap(Map<String, dynamic> map) {
    return GetBucketCor(
      maxAgeSeconds: map['maxAgeSeconds'] as int,
      methods: (map['methods'] as List).cast<String>(),
      origins: (map['origins'] as List).cast<String>(),
      responseHeaders: (map['responseHeaders'] as List).cast<String>(),
    );
  }
}
