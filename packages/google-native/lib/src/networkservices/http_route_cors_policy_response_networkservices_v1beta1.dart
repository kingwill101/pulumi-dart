// ignore_for_file: unused_element, unnecessary_cast


/// The Specification for allowing client side cross-origin requests.
class HttpRouteCorsPolicyResponseNetworkservicesV1beta1 {
  /// In response to a preflight request, setting this to true indicates that the actual request can include user credentials. This translates to the Access-Control-Allow-Credentials header. Default value is false.
  final bool allowCredentials;
  /// Specifies the content for Access-Control-Allow-Headers header.
  final List<String> allowHeaders;
  /// Specifies the content for Access-Control-Allow-Methods header.
  final List<String> allowMethods;
  /// Specifies the regular expression patterns that match allowed origins. For regular expression grammar, please see https://github.com/google/re2/wiki/Syntax.
  final List<String> allowOriginRegexes;
  /// Specifies the list of origins that will be allowed to do CORS requests. An origin is allowed if it matches either an item in allow_origins or an item in allow_origin_regexes.
  final List<String> allowOrigins;
  /// If true, the CORS policy is disabled. The default value is false, which indicates that the CORS policy is in effect.
  final bool disabled;
  /// Specifies the content for Access-Control-Expose-Headers header.
  final List<String> exposeHeaders;
  /// Specifies how long result of a preflight request can be cached in seconds. This translates to the Access-Control-Max-Age header.
  final String maxAge;

  /// Creates a new [HttpRouteCorsPolicyResponseNetworkservicesV1beta1].
  /// [allowCredentials] In response to a preflight request, setting this to true indicates that the actual request can include user credentials. This translates to the Access-Control-Allow-Credentials header. Default value is false.
  /// [allowHeaders] Specifies the content for Access-Control-Allow-Headers header.
  /// [allowMethods] Specifies the content for Access-Control-Allow-Methods header.
  /// [allowOriginRegexes] Specifies the regular expression patterns that match allowed origins. For regular expression grammar, please see https://github.com/google/re2/wiki/Syntax.
  /// [allowOrigins] Specifies the list of origins that will be allowed to do CORS requests. An origin is allowed if it matches either an item in allow_origins or an item in allow_origin_regexes.
  /// [disabled] If true, the CORS policy is disabled. The default value is false, which indicates that the CORS policy is in effect.
  /// [exposeHeaders] Specifies the content for Access-Control-Expose-Headers header.
  /// [maxAge] Specifies how long result of a preflight request can be cached in seconds. This translates to the Access-Control-Max-Age header.
  HttpRouteCorsPolicyResponseNetworkservicesV1beta1({
    required this.allowCredentials,
    required this.allowHeaders,
    required this.allowMethods,
    required this.allowOriginRegexes,
    required this.allowOrigins,
    required this.disabled,
    required this.exposeHeaders,
    required this.maxAge,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowCredentials': allowCredentials,
      'allowHeaders': allowHeaders,
      'allowMethods': allowMethods,
      'allowOriginRegexes': allowOriginRegexes,
      'allowOrigins': allowOrigins,
      'disabled': disabled,
      'exposeHeaders': exposeHeaders,
      'maxAge': maxAge,
    };
  }

  factory HttpRouteCorsPolicyResponseNetworkservicesV1beta1.fromMap(Map<String, dynamic> map) {
    return HttpRouteCorsPolicyResponseNetworkservicesV1beta1(
      allowCredentials: map['allowCredentials'] as bool,
      allowHeaders: (map['allowHeaders'] as List).cast<String>(),
      allowMethods: (map['allowMethods'] as List).cast<String>(),
      allowOriginRegexes: (map['allowOriginRegexes'] as List).cast<String>(),
      allowOrigins: (map['allowOrigins'] as List).cast<String>(),
      disabled: map['disabled'] as bool,
      exposeHeaders: (map['exposeHeaders'] as List).cast<String>(),
      maxAge: map['maxAge'] as String,
    );
  }
}

