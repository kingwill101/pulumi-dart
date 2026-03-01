// ignore_for_file: unused_element, unnecessary_cast

class HttpRouteRuleActionCorsPolicy {
  /// In response to a preflight request, setting this to true indicates that the actual request can include user credentials.
  final bool? allowCredentials;

  /// Specifies the content for Access-Control-Allow-Headers header.
  final List<String>? allowHeaders;

  /// Specifies the content for Access-Control-Allow-Methods header.
  final List<String>? allowMethods;

  /// Specifies the regular expression patterns that match allowed origins.
  final List<String>? allowOriginRegexes;

  /// Specifies the list of origins that will be allowed to do CORS requests.
  final List<String>? allowOrigins;

  /// If true, the CORS policy is disabled. The default value is false, which indicates that the CORS policy is in effect.
  final bool? disabled;

  /// Specifies the content for Access-Control-Expose-Headers header.
  final List<String>? exposeHeaders;

  /// Specifies how long result of a preflight request can be cached in seconds.
  final String? maxAge;

  /// Creates a new [HttpRouteRuleActionCorsPolicy].
  /// [allowCredentials] In response to a preflight request, setting this to true indicates that the actual request can include user credentials.
  /// [allowHeaders] Specifies the content for Access-Control-Allow-Headers header.
  /// [allowMethods] Specifies the content for Access-Control-Allow-Methods header.
  /// [allowOriginRegexes] Specifies the regular expression patterns that match allowed origins.
  /// [allowOrigins] Specifies the list of origins that will be allowed to do CORS requests.
  /// [disabled] If true, the CORS policy is disabled. The default value is false, which indicates that the CORS policy is in effect.
  /// [exposeHeaders] Specifies the content for Access-Control-Expose-Headers header.
  /// [maxAge] Specifies how long result of a preflight request can be cached in seconds.
  HttpRouteRuleActionCorsPolicy({
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

  factory HttpRouteRuleActionCorsPolicy.fromMap(Map<String, dynamic> map) {
    return HttpRouteRuleActionCorsPolicy(
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
      maxAge: map['maxAge'] == null ? null : map['maxAge'] as String,
    );
  }
}
