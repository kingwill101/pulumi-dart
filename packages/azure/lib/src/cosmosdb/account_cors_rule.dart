// ignore_for_file: unused_element, unnecessary_cast


class AccountCorsRule {
  /// A list of headers that are allowed to be a part of the cross-origin request.
  final List<String> allowedHeaders;
  /// A list of HTTP headers that are allowed to be executed by the origin. Valid options are `DELETE`, `GET`, `HEAD`, `MERGE`, `POST`, `OPTIONS`, `PUT` or `PATCH`.
  final List<String> allowedMethods;
  /// A list of origin domains that will be allowed by CORS.
  final List<String> allowedOrigins;
  /// A list of response headers that are exposed to CORS clients.
  final List<String> exposedHeaders;
  /// The number of seconds the client should cache a preflight response. Possible values are between `1` and `2147483647`.
  final int? maxAgeInSeconds;

  /// Creates a new [AccountCorsRule].
  /// [allowedHeaders] A list of headers that are allowed to be a part of the cross-origin request.
  /// [allowedMethods] A list of HTTP headers that are allowed to be executed by the origin. Valid options are `DELETE`, `GET`, `HEAD`, `MERGE`, `POST`, `OPTIONS`, `PUT` or `PATCH`.
  /// [allowedOrigins] A list of origin domains that will be allowed by CORS.
  /// [exposedHeaders] A list of response headers that are exposed to CORS clients.
  /// [maxAgeInSeconds] The number of seconds the client should cache a preflight response. Possible values are between `1` and `2147483647`.
  AccountCorsRule({
    required this.allowedHeaders,
    required this.allowedMethods,
    required this.allowedOrigins,
    required this.exposedHeaders,
    this.maxAgeInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedHeaders': allowedHeaders,
      'allowedMethods': allowedMethods,
      'allowedOrigins': allowedOrigins,
      'exposedHeaders': exposedHeaders,
      'maxAgeInSeconds': ?maxAgeInSeconds,
    };
  }

  factory AccountCorsRule.fromMap(Map<String, dynamic> map) {
    return AccountCorsRule(
      allowedHeaders: (map['allowedHeaders'] as List).cast<String>(),
      allowedMethods: (map['allowedMethods'] as List).cast<String>(),
      allowedOrigins: (map['allowedOrigins'] as List).cast<String>(),
      exposedHeaders: (map['exposedHeaders'] as List).cast<String>(),
      maxAgeInSeconds: map['maxAgeInSeconds'] == null ? null : map['maxAgeInSeconds'] as int,
    );
  }
}

