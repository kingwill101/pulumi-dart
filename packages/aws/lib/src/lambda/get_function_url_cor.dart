// ignore_for_file: unused_element, unnecessary_cast

class GetFunctionUrlCor {
  /// Whether credentials are included in the CORS request.
  final bool allowCredentials;

  /// List of headers that are specified in the Access-Control-Request-Headers header.
  final List<String> allowHeaders;

  /// List of HTTP methods that are allowed when calling the function URL.
  final List<String> allowMethods;

  /// List of origins that are allowed to make requests to the function URL.
  final List<String> allowOrigins;

  /// List of headers in the response that you want to expose to the origin that called the function URL.
  final List<String> exposeHeaders;

  /// Maximum amount of time, in seconds, that web browsers can cache results of a preflight request.
  final int maxAge;

  /// Creates a new [GetFunctionUrlCor].
  /// [allowCredentials] Whether credentials are included in the CORS request.
  /// [allowHeaders] List of headers that are specified in the Access-Control-Request-Headers header.
  /// [allowMethods] List of HTTP methods that are allowed when calling the function URL.
  /// [allowOrigins] List of origins that are allowed to make requests to the function URL.
  /// [exposeHeaders] List of headers in the response that you want to expose to the origin that called the function URL.
  /// [maxAge] Maximum amount of time, in seconds, that web browsers can cache results of a preflight request.
  GetFunctionUrlCor({
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

  factory GetFunctionUrlCor.fromMap(Map<String, dynamic> map) {
    return GetFunctionUrlCor(
      allowCredentials: map['allowCredentials'] as bool,
      allowHeaders: (map['allowHeaders'] as List).cast<String>(),
      allowMethods: (map['allowMethods'] as List).cast<String>(),
      allowOrigins: (map['allowOrigins'] as List).cast<String>(),
      exposeHeaders: (map['exposeHeaders'] as List).cast<String>(),
      maxAge: map['maxAge'] as int,
    );
  }
}
