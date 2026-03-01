// ignore_for_file: unused_element, unnecessary_cast


class GetApiCorsConfiguration {
  /// Whether credentials are included in the CORS request.
  final bool allowCredentials;
  /// Set of allowed HTTP headers.
  final List<String> allowHeaders;
  /// Set of allowed HTTP methods.
  final List<String> allowMethods;
  /// Set of allowed origins.
  final List<String> allowOrigins;
  /// Set of exposed HTTP headers.
  final List<String> exposeHeaders;
  /// Number of seconds that the browser should cache preflight request results.
  final int maxAge;

  /// Creates a new [GetApiCorsConfiguration].
  /// [allowCredentials] Whether credentials are included in the CORS request.
  /// [allowHeaders] Set of allowed HTTP headers.
  /// [allowMethods] Set of allowed HTTP methods.
  /// [allowOrigins] Set of allowed origins.
  /// [exposeHeaders] Set of exposed HTTP headers.
  /// [maxAge] Number of seconds that the browser should cache preflight request results.
  GetApiCorsConfiguration({
    required this.allowCredentials,
    required this.allowHeaders,
    required this.allowMethods,
    required this.allowOrigins,
    required this.exposeHeaders,
    required this.maxAge,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowCredentials': allowCredentials,
      'allowHeaders': allowHeaders,
      'allowMethods': allowMethods,
      'allowOrigins': allowOrigins,
      'exposeHeaders': exposeHeaders,
      'maxAge': maxAge,
    };
  }

  factory GetApiCorsConfiguration.fromMap(Map<String, dynamic> map) {
    return GetApiCorsConfiguration(
      allowCredentials: map['allowCredentials'] as bool,
      allowHeaders: (map['allowHeaders'] as List).cast<String>(),
      allowMethods: (map['allowMethods'] as List).cast<String>(),
      allowOrigins: (map['allowOrigins'] as List).cast<String>(),
      exposeHeaders: (map['exposeHeaders'] as List).cast<String>(),
      maxAge: map['maxAge'] as int,
    );
  }
}

