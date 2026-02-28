// ignore_for_file: unused_element, unnecessary_cast

/// The specification for allowing client-side cross-origin requests. For more information about the W3C recommendation for cross-origin resource sharing (CORS), see Fetch API Living Standard.
class CorsPolicyResponseComputeV1 {
  /// In response to a preflight request, setting this to true indicates that the actual request can include user credentials. This field translates to the Access-Control-Allow-Credentials header. Default is false.
  final bool allowCredentials;

  /// Specifies the content for the Access-Control-Allow-Headers header.
  final List<String> allowHeaders;

  /// Specifies the content for the Access-Control-Allow-Methods header.
  final List<String> allowMethods;

  /// Specifies a regular expression that matches allowed origins. For more information about the regular expression syntax, see Syntax. An origin is allowed if it matches either an item in allowOrigins or an item in allowOriginRegexes. Regular expressions can only be used when the loadBalancingScheme is set to INTERNAL_SELF_MANAGED.
  final List<String> allowOriginRegexes;

  /// Specifies the list of origins that is allowed to do CORS requests. An origin is allowed if it matches either an item in allowOrigins or an item in allowOriginRegexes.
  final List<String> allowOrigins;

  /// If true, the setting specifies the CORS policy is disabled. The default value of false, which indicates that the CORS policy is in effect.
  final bool disabled;

  /// Specifies the content for the Access-Control-Expose-Headers header.
  final List<String> exposeHeaders;

  /// Specifies how long results of a preflight request can be cached in seconds. This field translates to the Access-Control-Max-Age header.
  final int maxAge;

  /// Creates a new [CorsPolicyResponseComputeV1].
  /// [allowCredentials] In response to a preflight request, setting this to true indicates that the actual request can include user credentials. This field translates to the Access-Control-Allow-Credentials header. Default is false.
  /// [allowHeaders] Specifies the content for the Access-Control-Allow-Headers header.
  /// [allowMethods] Specifies the content for the Access-Control-Allow-Methods header.
  /// [allowOriginRegexes] Specifies a regular expression that matches allowed origins. For more information about the regular expression syntax, see Syntax. An origin is allowed if it matches either an item in allowOrigins or an item in allowOriginRegexes. Regular expressions can only be used when the loadBalancingScheme is set to INTERNAL_SELF_MANAGED.
  /// [allowOrigins] Specifies the list of origins that is allowed to do CORS requests. An origin is allowed if it matches either an item in allowOrigins or an item in allowOriginRegexes.
  /// [disabled] If true, the setting specifies the CORS policy is disabled. The default value of false, which indicates that the CORS policy is in effect.
  /// [exposeHeaders] Specifies the content for the Access-Control-Expose-Headers header.
  /// [maxAge] Specifies how long results of a preflight request can be cached in seconds. This field translates to the Access-Control-Max-Age header.
  CorsPolicyResponseComputeV1({
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
    final map = <String, dynamic>{};
    map['allowCredentials'] = allowCredentials;
    map['allowHeaders'] = allowHeaders;
    map['allowMethods'] = allowMethods;
    map['allowOriginRegexes'] = allowOriginRegexes;
    map['allowOrigins'] = allowOrigins;
    map['disabled'] = disabled;
    map['exposeHeaders'] = exposeHeaders;
    map['maxAge'] = maxAge;
    return map;
  }

  factory CorsPolicyResponseComputeV1.fromMap(Map<String, dynamic> map) {
    return CorsPolicyResponseComputeV1(
      allowCredentials: map['allowCredentials'] as bool,
      allowHeaders: (map['allowHeaders'] as List).cast<String>(),
      allowMethods: (map['allowMethods'] as List).cast<String>(),
      allowOriginRegexes: (map['allowOriginRegexes'] as List).cast<String>(),
      allowOrigins: (map['allowOrigins'] as List).cast<String>(),
      disabled: map['disabled'] as bool,
      exposeHeaders: (map['exposeHeaders'] as List).cast<String>(),
      maxAge: map['maxAge'] as int,
    );
  }
}
