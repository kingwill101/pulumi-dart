// ignore_for_file: unused_element, unnecessary_cast

import 'get_app_spec_static_site_cors_allow_origins.dart';

class GetAppSpecStaticSiteCors {
  /// Whether browsers should expose the response to the client-side JavaScript code when the request's credentials mode is `include`. This configures the `Access-Control-Allow-Credentials` header.
  final bool? allowCredentials;
  /// The set of allowed HTTP request headers. This configures the `Access-Control-Allow-Headers` header.
  final List<String>? allowHeaders;
  /// The set of allowed HTTP methods. This configures the `Access-Control-Allow-Methods` header.
  final List<String>? allowMethods;
  /// The `Access-Control-Allow-Origin` can be
  final GetAppSpecStaticSiteCorsAllowOrigins? allowOrigins;
  /// The set of HTTP response headers that browsers are allowed to access. This configures the `Access-Control-Expose-Headers` header.
  final List<String>? exposeHeaders;
  /// An optional duration specifying how long browsers can cache the results of a preflight request. This configures the Access-Control-Max-Age header. Example: `5h30m`.
  final String? maxAge;

  /// Creates a new [GetAppSpecStaticSiteCors].
  /// [allowCredentials] Whether browsers should expose the response to the client-side JavaScript code when the request's credentials mode is `include`. This configures the `Access-Control-Allow-Credentials` header.
  /// [allowHeaders] The set of allowed HTTP request headers. This configures the `Access-Control-Allow-Headers` header.
  /// [allowMethods] The set of allowed HTTP methods. This configures the `Access-Control-Allow-Methods` header.
  /// [allowOrigins] The `Access-Control-Allow-Origin` can be
  /// [exposeHeaders] The set of HTTP response headers that browsers are allowed to access. This configures the `Access-Control-Expose-Headers` header.
  /// [maxAge] An optional duration specifying how long browsers can cache the results of a preflight request. This configures the Access-Control-Max-Age header. Example: `5h30m`.
  GetAppSpecStaticSiteCors({
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
      'allowOrigins': ?allowOrigins == null ? null : allowOrigins!.toMap(),
      'exposeHeaders': ?exposeHeaders,
      'maxAge': ?maxAge,
    };
  }

  factory GetAppSpecStaticSiteCors.fromMap(Map<String, dynamic> map) {
    return GetAppSpecStaticSiteCors(
      allowCredentials: map['allowCredentials'] == null ? null : map['allowCredentials'] as bool,
      allowHeaders: map['allowHeaders'] == null ? null : (map['allowHeaders'] as List).cast<String>(),
      allowMethods: map['allowMethods'] == null ? null : (map['allowMethods'] as List).cast<String>(),
      allowOrigins: map['allowOrigins'] == null ? null : GetAppSpecStaticSiteCorsAllowOrigins.fromMap((map['allowOrigins'] as Map).cast<String, dynamic>()),
      exposeHeaders: map['exposeHeaders'] == null ? null : (map['exposeHeaders'] as List).cast<String>(),
      maxAge: map['maxAge'] == null ? null : map['maxAge'] as String,
    );
  }
}

