// ignore_for_file: unused_element, unnecessary_cast


class BucketCorsRule {
  /// Specifies which headers are allowed.
  final List<String>? allowedHeaders;
  /// Specifies which methods are allowed. Can be GET, PUT, POST, DELETE or HEAD.
  final List<String> allowedMethods;
  /// Specifies which origins are allowed.
  final List<String> allowedOrigins;
  /// Specifies expose header in the response.
  final List<String>? exposeHeaders;
  /// Specifies time in seconds that browser can cache the response for a preflight request.
  final int? maxAgeSeconds;

  /// Creates a new [BucketCorsRule].
  /// [allowedHeaders] Specifies which headers are allowed.
  /// [allowedMethods] Specifies which methods are allowed. Can be GET, PUT, POST, DELETE or HEAD.
  /// [allowedOrigins] Specifies which origins are allowed.
  /// [exposeHeaders] Specifies expose header in the response.
  /// [maxAgeSeconds] Specifies time in seconds that browser can cache the response for a preflight request.
  BucketCorsRule({
    this.allowedHeaders,
    required this.allowedMethods,
    required this.allowedOrigins,
    this.exposeHeaders,
    this.maxAgeSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedHeaders': ?allowedHeaders,
      'allowedMethods': allowedMethods,
      'allowedOrigins': allowedOrigins,
      'exposeHeaders': ?exposeHeaders,
      'maxAgeSeconds': ?maxAgeSeconds,
    };
  }

  factory BucketCorsRule.fromMap(Map<String, dynamic> map) {
    return BucketCorsRule(
      allowedHeaders: map['allowedHeaders'] == null ? null : (map['allowedHeaders'] as List).cast<String>(),
      allowedMethods: (map['allowedMethods'] as List).cast<String>(),
      allowedOrigins: (map['allowedOrigins'] as List).cast<String>(),
      exposeHeaders: map['exposeHeaders'] == null ? null : (map['exposeHeaders'] as List).cast<String>(),
      maxAgeSeconds: map['maxAgeSeconds'] == null ? null : map['maxAgeSeconds'] as int,
    );
  }
}

