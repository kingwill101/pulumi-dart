// ignore_for_file: unused_element, unnecessary_cast

class BucketCorsConfigurationV2CorsRule {
  /// Set of Headers that are specified in the `Access-Control-Request-Headers` header.
  final List<String>? allowedHeaders;

  /// Set of HTTP methods that you allow the origin to execute. Valid values are `GET`, `PUT`, `HEAD`, `POST`, and `DELETE`.
  final List<String> allowedMethods;

  /// Set of origins you want customers to be able to access the bucket from.
  final List<String> allowedOrigins;

  /// Set of headers in the response that you want customers to be able to access from their applications (for example, from a JavaScript `XMLHttpRequest` object).
  final List<String>? exposeHeaders;

  /// Unique identifier for the rule. The value cannot be longer than 255 characters.
  final String? id;

  /// Time in seconds that your browser is to cache the preflight response for the specified resource.
  final int? maxAgeSeconds;

  /// Creates a new [BucketCorsConfigurationV2CorsRule].
  /// [allowedHeaders] Set of Headers that are specified in the `Access-Control-Request-Headers` header.
  /// [allowedMethods] Set of HTTP methods that you allow the origin to execute. Valid values are `GET`, `PUT`, `HEAD`, `POST`, and `DELETE`.
  /// [allowedOrigins] Set of origins you want customers to be able to access the bucket from.
  /// [exposeHeaders] Set of headers in the response that you want customers to be able to access from their applications (for example, from a JavaScript `XMLHttpRequest` object).
  /// [id] Unique identifier for the rule. The value cannot be longer than 255 characters.
  /// [maxAgeSeconds] Time in seconds that your browser is to cache the preflight response for the specified resource.
  BucketCorsConfigurationV2CorsRule({
    this.allowedHeaders,
    required this.allowedMethods,
    required this.allowedOrigins,
    this.exposeHeaders,
    this.id,
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
    final idValue = id;
    if (idValue != null) {
      map['id'] = idValue;
    }
    final maxAgeSecondsValue = maxAgeSeconds;
    if (maxAgeSecondsValue != null) {
      map['maxAgeSeconds'] = maxAgeSecondsValue;
    }
    return map;
  }

  factory BucketCorsConfigurationV2CorsRule.fromMap(Map<String, dynamic> map) {
    return BucketCorsConfigurationV2CorsRule(
      allowedHeaders: map['allowedHeaders'] == null
          ? null
          : (map['allowedHeaders'] as List).cast<String>(),
      allowedMethods: (map['allowedMethods'] as List).cast<String>(),
      allowedOrigins: (map['allowedOrigins'] as List).cast<String>(),
      exposeHeaders: map['exposeHeaders'] == null
          ? null
          : (map['exposeHeaders'] as List).cast<String>(),
      id: map['id'] == null ? null : map['id'] as String,
      maxAgeSeconds:
          map['maxAgeSeconds'] == null ? null : map['maxAgeSeconds'] as int,
    );
  }
}
