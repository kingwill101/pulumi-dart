// ignore_for_file: unused_element, unnecessary_cast

class BucketV2CorsRule {
  /// List of headers allowed.
  final List<String>? allowedHeaders;

  /// One or more HTTP methods that you allow the origin to execute. Can be `GET`, `PUT`, `POST`, `DELETE` or `HEAD`.
  final List<String> allowedMethods;

  /// One or more origins you want customers to be able to access the bucket from.
  final List<String> allowedOrigins;

  /// One or more headers in the response that you want customers to be able to access from their applications (for example, from a JavaScript `XMLHttpRequest` object).
  final List<String>? exposeHeaders;

  /// Specifies time in seconds that browser can cache the response for a preflight request.
  final int? maxAgeSeconds;

  BucketV2CorsRule({
    this.allowedHeaders,
    required this.allowedMethods,
    required this.allowedOrigins,
    this.exposeHeaders,
    this.maxAgeSeconds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowedHeadersValue = allowedHeaders;
    if (allowedHeadersValue != null) {
      map['allowedHeaders'] = allowedHeadersValue;
    }
    map['allowedMethods'] = allowedMethods;
    map['allowedOrigins'] = allowedOrigins;
    final exposeHeadersValue = exposeHeaders;
    if (exposeHeadersValue != null) {
      map['exposeHeaders'] = exposeHeadersValue;
    }
    final maxAgeSecondsValue = maxAgeSeconds;
    if (maxAgeSecondsValue != null) {
      map['maxAgeSeconds'] = maxAgeSecondsValue;
    }
    return map;
  }

  factory BucketV2CorsRule.fromMap(Map<String, dynamic> map) {
    return BucketV2CorsRule(
      allowedHeaders: map['allowedHeaders'] == null
          ? null
          : (map['allowedHeaders'] as List).cast<String>(),
      allowedMethods: (map['allowedMethods'] as List).cast<String>(),
      allowedOrigins: (map['allowedOrigins'] as List).cast<String>(),
      exposeHeaders: map['exposeHeaders'] == null
          ? null
          : (map['exposeHeaders'] as List).cast<String>(),
      maxAgeSeconds:
          map['maxAgeSeconds'] == null ? null : map['maxAgeSeconds'] as int,
    );
  }
}
