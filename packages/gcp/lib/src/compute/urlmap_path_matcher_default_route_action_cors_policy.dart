// ignore_for_file: unused_element, unnecessary_cast

class URLMapPathMatcherDefaultRouteActionCorsPolicy {
  /// In response to a preflight request, setting this to true indicates that the actual request can include user credentials.
  /// This translates to the Access-Control-Allow-Credentials header.
  final bool? allowCredentials;

  /// Specifies the content for the Access-Control-Allow-Headers header.
  final List<String>? allowHeaders;

  /// Specifies the content for the Access-Control-Allow-Methods header.
  final List<String>? allowMethods;

  /// Specifies the regular expression patterns that match allowed origins. For regular expression grammar
  /// please see en.cppreference.com/w/cpp/regex/ecmascript
  /// An origin is allowed if it matches either an item in allowOrigins or an item in allowOriginRegexes.
  final List<String>? allowOriginRegexes;

  /// Specifies the list of origins that will be allowed to do CORS requests.
  /// An origin is allowed if it matches either an item in allowOrigins or an item in allowOriginRegexes.
  final List<String>? allowOrigins;

  /// If true, specifies the CORS policy is disabled. The default value is false, which indicates that the CORS policy is in effect.
  final bool? disabled;

  /// Specifies the content for the Access-Control-Expose-Headers header.
  final List<String>? exposeHeaders;

  /// Specifies how long results of a preflight request can be cached in seconds.
  /// This translates to the Access-Control-Max-Age header.
  final int? maxAge;

  /// Creates a new [URLMapPathMatcherDefaultRouteActionCorsPolicy].
  /// [allowCredentials] In response to a preflight request, setting this to true indicates that the actual request can include user credentials.
  /// [allowHeaders] Specifies the content for the Access-Control-Allow-Headers header.
  /// [allowMethods] Specifies the content for the Access-Control-Allow-Methods header.
  /// [allowOriginRegexes] Specifies the regular expression patterns that match allowed origins. For regular expression grammar
  /// [allowOrigins] Specifies the list of origins that will be allowed to do CORS requests.
  /// [disabled] If true, specifies the CORS policy is disabled. The default value is false, which indicates that the CORS policy is in effect.
  /// [exposeHeaders] Specifies the content for the Access-Control-Expose-Headers header.
  /// [maxAge] Specifies how long results of a preflight request can be cached in seconds.
  URLMapPathMatcherDefaultRouteActionCorsPolicy({
    this.allowCredentials,
    this.allowHeaders,
    this.allowMethods,
    this.allowOriginRegexes,
    this.allowOrigins,
    this.disabled,
    this.exposeHeaders,
    this.maxAge,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowCredentials': ?allowCredentials,
      'allowHeaders': ?allowHeaders,
      'allowMethods': ?allowMethods,
      'allowOriginRegexes': ?allowOriginRegexes,
      'allowOrigins': ?allowOrigins,
      'disabled': ?disabled,
      'exposeHeaders': ?exposeHeaders,
      'maxAge': ?maxAge,
    };
  }

  factory URLMapPathMatcherDefaultRouteActionCorsPolicy.fromMap(
    Map<String, dynamic> map,
  ) {
    return URLMapPathMatcherDefaultRouteActionCorsPolicy(
      allowCredentials: map['allowCredentials'] == null
          ? null
          : map['allowCredentials'] as bool,
      allowHeaders: map['allowHeaders'] == null
          ? null
          : (map['allowHeaders'] as List).cast<String>(),
      allowMethods: map['allowMethods'] == null
          ? null
          : (map['allowMethods'] as List).cast<String>(),
      allowOriginRegexes: map['allowOriginRegexes'] == null
          ? null
          : (map['allowOriginRegexes'] as List).cast<String>(),
      allowOrigins: map['allowOrigins'] == null
          ? null
          : (map['allowOrigins'] as List).cast<String>(),
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
      exposeHeaders: map['exposeHeaders'] == null
          ? null
          : (map['exposeHeaders'] as List).cast<String>(),
      maxAge: map['maxAge'] == null ? null : map['maxAge'] as int,
    );
  }
}
