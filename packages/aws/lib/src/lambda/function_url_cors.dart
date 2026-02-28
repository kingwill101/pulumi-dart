// ignore_for_file: unused_element, unnecessary_cast

class FunctionUrlCors {
  /// Whether to allow cookies or other credentials in requests to the function URL.
  final bool? allowCredentials;

  /// HTTP headers that origins can include in requests to the function URL.
  final List<String>? allowHeaders;

  /// HTTP methods that are allowed when calling the function URL.
  final List<String>? allowMethods;

  /// Origins that can access the function URL.
  final List<String>? allowOrigins;

  /// HTTP headers in your function response that you want to expose to origins that call the function URL.
  final List<String>? exposeHeaders;

  /// Maximum amount of time, in seconds, that web browsers can cache results of a preflight request. Maximum value is `86400`.
  final int? maxAge;

  /// Creates a new [FunctionUrlCors].
  /// [allowCredentials] Whether to allow cookies or other credentials in requests to the function URL.
  /// [allowHeaders] HTTP headers that origins can include in requests to the function URL.
  /// [allowMethods] HTTP methods that are allowed when calling the function URL.
  /// [allowOrigins] Origins that can access the function URL.
  /// [exposeHeaders] HTTP headers in your function response that you want to expose to origins that call the function URL.
  /// [maxAge] Maximum amount of time, in seconds, that web browsers can cache results of a preflight request. Maximum value is `86400`.
  FunctionUrlCors({
    this.allowCredentials,
    this.allowHeaders,
    this.allowMethods,
    this.allowOrigins,
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
    final allowOriginsValue = allowOrigins;
    if (allowOriginsValue != null) {
      map['allowOrigins'] = allowOriginsValue;
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

  factory FunctionUrlCors.fromMap(Map<String, dynamic> map) {
    return FunctionUrlCors(
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
