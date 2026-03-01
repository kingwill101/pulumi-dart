// ignore_for_file: unused_element, unnecessary_cast


class V3CustomDomainCorsConfig {
  /// Whether to allow credentials (such as Cookies, Authorization headers, etc.). When AllowCredentials is true, AllowOrigins cannot use the wildcard '*'.
  final bool? allowCredentials;
  /// List of allowed request headers, such as Content-Type, Authorization, etc.
  final List<String>? allowHeaders;
  /// List of allowed HTTP methods, such as GET, POST, PUT, DELETE, etc.
  final List<String>? allowMethods;
  /// List of allowed origins. Supports wildcard '*' to allow all origins (when AllowCredentials is false), specific domains like 'https://example.com', or an array of multiple domains.
  final List<String>? allowOrigins;
  /// List of response headers that can be exposed to the browser.
  final List<String>? exposeHeaders;
  /// Cache time (seconds) for preflight request results. Browsers will not resend preflight requests within this time.
  final int? maxAge;

  /// Creates a new [V3CustomDomainCorsConfig].
  /// [allowCredentials] Whether to allow credentials (such as Cookies, Authorization headers, etc.). When AllowCredentials is true, AllowOrigins cannot use the wildcard '*'.
  /// [allowHeaders] List of allowed request headers, such as Content-Type, Authorization, etc.
  /// [allowMethods] List of allowed HTTP methods, such as GET, POST, PUT, DELETE, etc.
  /// [allowOrigins] List of allowed origins. Supports wildcard '*' to allow all origins (when AllowCredentials is false), specific domains like 'https://example.com', or an array of multiple domains.
  /// [exposeHeaders] List of response headers that can be exposed to the browser.
  /// [maxAge] Cache time (seconds) for preflight request results. Browsers will not resend preflight requests within this time.
  V3CustomDomainCorsConfig({
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

  factory V3CustomDomainCorsConfig.fromMap(Map<String, dynamic> map) {
    return V3CustomDomainCorsConfig(
      allowCredentials: map['allowCredentials'] == null ? null : map['allowCredentials'] as bool,
      allowHeaders: map['allowHeaders'] == null ? null : (map['allowHeaders'] as List).cast<String>(),
      allowMethods: map['allowMethods'] == null ? null : (map['allowMethods'] as List).cast<String>(),
      allowOrigins: map['allowOrigins'] == null ? null : (map['allowOrigins'] as List).cast<String>(),
      exposeHeaders: map['exposeHeaders'] == null ? null : (map['exposeHeaders'] as List).cast<String>(),
      maxAge: map['maxAge'] == null ? null : map['maxAge'] as int,
    );
  }
}

