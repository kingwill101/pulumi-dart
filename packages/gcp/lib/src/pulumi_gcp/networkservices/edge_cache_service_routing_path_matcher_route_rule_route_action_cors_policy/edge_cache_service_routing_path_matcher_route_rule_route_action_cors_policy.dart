// ignore_for_file: unused_element, unnecessary_cast

class EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCorsPolicy {
  /// In response to a preflight request, setting this to true indicates that the actual request can include user credentials.
  /// This translates to the Access-Control-Allow-Credentials response header.
  final bool? allowCredentials;

  /// Specifies the content for the Access-Control-Allow-Headers response header.
  final List<String>? allowHeaders;

  /// Specifies the content for the Access-Control-Allow-Methods response header.
  final List<String>? allowMethods;

  /// Specifies the list of origins that will be allowed to do CORS requests.
  /// This translates to the Access-Control-Allow-Origin response header.
  final List<String>? allowOrigins;

  /// If true, specifies the CORS policy is disabled. The default value is false, which indicates that the CORS policy is in effect.
  final bool? disabled;

  /// Specifies the content for the Access-Control-Allow-Headers response header.
  final List<String>? exposeHeaders;

  /// Specifies how long results of a preflight request can be cached by a client in seconds. Note that many browser clients enforce a maximum TTL of 600s (10 minutes).
  /// - Setting the value to -1 forces a pre-flight check for all requests (not recommended)
  /// - A maximum TTL of 86400s can be set, but note that (as above) some clients may force pre-flight checks at a more regular interval.
  /// - This translates to the Access-Control-Max-Age header.
  /// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  final String maxAge;

  EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCorsPolicy({
    this.allowCredentials,
    this.allowHeaders,
    this.allowMethods,
    this.allowOrigins,
    this.disabled,
    this.exposeHeaders,
    required this.maxAge,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final allowCredentialsValue = allowCredentials;
    if (allowCredentialsValue != null) {
      map['allowCredentials'] = allowCredentialsValue;
    }
    final allowHeadersValue = allowHeaders;
    if (allowHeadersValue != null) {
      map['allowHeaders'] = allowHeadersValue;
    }
    final allowMethodsValue = allowMethods;
    if (allowMethodsValue != null) {
      map['allowMethods'] = allowMethodsValue;
    }
    final allowOriginsValue = allowOrigins;
    if (allowOriginsValue != null) {
      map['allowOrigins'] = allowOriginsValue;
    }
    final disabledValue = disabled;
    if (disabledValue != null) {
      map['disabled'] = disabledValue;
    }
    final exposeHeadersValue = exposeHeaders;
    if (exposeHeadersValue != null) {
      map['exposeHeaders'] = exposeHeadersValue;
    }
    map['maxAge'] = maxAge;
    return map;
  }

  factory EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCorsPolicy.fromMap(
      Map<String, dynamic> map) {
    return EdgeCacheServiceRoutingPathMatcherRouteRuleRouteActionCorsPolicy(
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
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
      exposeHeaders: map['exposeHeaders'] == null
          ? null
          : (map['exposeHeaders'] as List).cast<String>(),
      maxAge: map['maxAge'] as String,
    );
  }
}
