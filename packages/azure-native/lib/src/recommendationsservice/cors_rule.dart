// ignore_for_file: unused_element, unnecessary_cast


/// CORS details.
class CorsRule {
  /// The request headers that the origin domain may specify on the CORS request.
  final List<String>? allowedHeaders;
  /// The methods (HTTP request verbs) that the origin domain may use for a CORS request.
  final List<String>? allowedMethods;
  /// The origin domains that are permitted to make a request against the service via CORS.
  final List<String> allowedOrigins;
  /// The response headers to expose to CORS clients.
  final List<String>? exposedHeaders;
  /// The number of seconds that the client/browser should cache a preflight response.
  final int? maxAgeInSeconds;

  /// Creates a new [CorsRule].
  /// [allowedHeaders] The request headers that the origin domain may specify on the CORS request.
  /// [allowedMethods] The methods (HTTP request verbs) that the origin domain may use for a CORS request.
  /// [allowedOrigins] The origin domains that are permitted to make a request against the service via CORS.
  /// [exposedHeaders] The response headers to expose to CORS clients.
  /// [maxAgeInSeconds] The number of seconds that the client/browser should cache a preflight response.
  CorsRule({
    this.allowedHeaders,
    this.allowedMethods,
    required this.allowedOrigins,
    this.exposedHeaders,
    this.maxAgeInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedHeaders': ?allowedHeaders,
      'allowedMethods': ?allowedMethods,
      'allowedOrigins': allowedOrigins,
      'exposedHeaders': ?exposedHeaders,
      'maxAgeInSeconds': ?maxAgeInSeconds,
    };
  }

  factory CorsRule.fromMap(Map<String, dynamic> map) {
    return CorsRule(
      allowedHeaders: map['allowedHeaders'] == null ? null : (map['allowedHeaders'] as List).cast<String>(),
      allowedMethods: map['allowedMethods'] == null ? null : (map['allowedMethods'] as List).cast<String>(),
      allowedOrigins: (map['allowedOrigins'] as List).cast<String>(),
      exposedHeaders: map['exposedHeaders'] == null ? null : (map['exposedHeaders'] as List).cast<String>(),
      maxAgeInSeconds: map['maxAgeInSeconds'] == null ? null : map['maxAgeInSeconds'] as int,
    );
  }
}

