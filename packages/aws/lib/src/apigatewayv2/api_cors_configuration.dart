// ignore_for_file: unused_element, unnecessary_cast

class ApiCorsConfiguration {
  /// Whether credentials are included in the CORS request.
  final bool? allowCredentials;

  /// Set of allowed HTTP headers.
  final List<String>? allowHeaders;

  /// Set of allowed HTTP methods.
  final List<String>? allowMethods;

  /// Set of allowed origins.
  final List<String>? allowOrigins;

  /// Set of exposed HTTP headers.
  final List<String>? exposeHeaders;

  /// Number of seconds that the browser should cache preflight request results.
  final int? maxAge;

  /// Creates a new [ApiCorsConfiguration].
  /// [allowCredentials] Whether credentials are included in the CORS request.
  /// [allowHeaders] Set of allowed HTTP headers.
  /// [allowMethods] Set of allowed HTTP methods.
  /// [allowOrigins] Set of allowed origins.
  /// [exposeHeaders] Set of exposed HTTP headers.
  /// [maxAge] Number of seconds that the browser should cache preflight request results.
  ApiCorsConfiguration({
    this.allowCredentials,
    this.allowHeaders,
    this.allowMethods,
    this.allowOrigins,
    this.exposeHeaders,
    this.maxAge,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowCredentials': ?allowCredentials,
      'allowHeaders': ?allowHeaders,
      'allowMethods': ?allowMethods,
      'allowOrigins': ?allowOrigins,
      'exposeHeaders': ?exposeHeaders,
      'maxAge': ?maxAge,
    };
  }

  factory ApiCorsConfiguration.fromMap(Map<String, dynamic> map) {
    return ApiCorsConfiguration(
      allowCredentials: map['allowCredentials'] == null
          ? null
          : map['allowCredentials'] as bool,
      allowHeaders: map['allowHeaders'] == null
          ? null
          : (map['allowHeaders'] as List).cast<String>(),
      allowMethods: map['allowMethods'] == null
          ? null
          : (map['allowMethods'] as List).cast<String>(),
      allowOrigins: map['allowOrigins'] == null
          ? null
          : (map['allowOrigins'] as List).cast<String>(),
      exposeHeaders: map['exposeHeaders'] == null
          ? null
          : (map['exposeHeaders'] as List).cast<String>(),
      maxAge: map['maxAge'] == null ? null : map['maxAge'] as int,
    );
  }
}
