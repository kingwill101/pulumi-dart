// ignore_for_file: unused_element, unnecessary_cast

/// The Specification for allowing client side cross-origin requests.
class HttpRouteCorsPolicy2 {
  /// In response to a preflight request, setting this to true indicates that the actual request can include user credentials. This translates to the Access-Control-Allow-Credentials header. Default value is false.
  final bool? allowCredentials;

  /// Specifies the content for Access-Control-Allow-Headers header.
  final List<String>? allowHeaders;

  /// Specifies the content for Access-Control-Allow-Methods header.
  final List<String>? allowMethods;

  /// Specifies the regular expression patterns that match allowed origins. For regular expression grammar, please see https://github.com/google/re2/wiki/Syntax.
  final List<String>? allowOriginRegexes;

  /// Specifies the list of origins that will be allowed to do CORS requests. An origin is allowed if it matches either an item in allow_origins or an item in allow_origin_regexes.
  final List<String>? allowOrigins;

  /// If true, the CORS policy is disabled. The default value is false, which indicates that the CORS policy is in effect.
  final bool? disabled;

  /// Specifies the content for Access-Control-Expose-Headers header.
  final List<String>? exposeHeaders;

  /// Specifies how long result of a preflight request can be cached in seconds. This translates to the Access-Control-Max-Age header.
  final String? maxAge;

  HttpRouteCorsPolicy2({
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
    final allowOriginRegexesValue = allowOriginRegexes;
    if (allowOriginRegexesValue != null) {
      map['allowOriginRegexes'] = allowOriginRegexesValue;
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
    final maxAgeValue = maxAge;
    if (maxAgeValue != null) {
      map['maxAge'] = maxAgeValue;
    }
    return map;
  }

  factory HttpRouteCorsPolicy2.fromMap(Map<String, dynamic> map) {
    return HttpRouteCorsPolicy2(
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
