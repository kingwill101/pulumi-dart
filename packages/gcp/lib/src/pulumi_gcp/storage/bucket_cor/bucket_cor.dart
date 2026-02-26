// ignore_for_file: unused_element, unnecessary_cast

class BucketCor {
  /// The value, in seconds, to return in the [Access-Control-Max-Age header](https://www.w3.org/TR/cors/#access-control-max-age-response-header) used in preflight responses.
  final int? maxAgeSeconds;

  /// The list of HTTP methods on which to include CORS response headers, (GET, OPTIONS, POST, etc) Note: "*" is permitted in the list of methods, and means "any method".
  final List<String>? methods;

  /// The list of [Origins](https://tools.ietf.org/html/rfc6454) eligible to receive CORS response headers. Note: "*" is permitted in the list of origins, and means "any Origin".
  final List<String>? origins;

  /// The list of HTTP headers other than the [simple response headers](https://www.w3.org/TR/cors/#simple-response-header) to give permission for the user-agent to share across domains.
  final List<String>? responseHeaders;

  BucketCor({
    this.maxAgeSeconds,
    this.methods,
    this.origins,
    this.responseHeaders,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final maxAgeSecondsValue = maxAgeSeconds;
    if (maxAgeSecondsValue != null) {
      map['maxAgeSeconds'] = maxAgeSecondsValue;
    }
    final methodsValue = methods;
    if (methodsValue != null) {
      map['methods'] = methodsValue;
    }
    final originsValue = origins;
    if (originsValue != null) {
      map['origins'] = originsValue;
    }
    final responseHeadersValue = responseHeaders;
    if (responseHeadersValue != null) {
      map['responseHeaders'] = responseHeadersValue;
    }
    return map;
  }

  factory BucketCor.fromMap(Map<String, dynamic> map) {
    return BucketCor(
      maxAgeSeconds:
          map['maxAgeSeconds'] == null ? null : map['maxAgeSeconds'] as int,
      methods: map['methods'] == null
          ? null
          : (map['methods'] as List).cast<String>(),
      origins: map['origins'] == null
          ? null
          : (map['origins'] as List).cast<String>(),
      responseHeaders: map['responseHeaders'] == null
          ? null
          : (map['responseHeaders'] as List).cast<String>(),
    );
  }
}
