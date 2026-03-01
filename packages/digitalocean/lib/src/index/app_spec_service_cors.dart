// ignore_for_file: unused_element, unnecessary_cast

import 'app_spec_service_cors_allow_origins.dart';

class AppSpecServiceCors {
  /// Whether browsers should expose the response to the client-side JavaScript code when the request’s credentials mode is `include`. This configures the Access-Control-Allow-Credentials header.
  final bool? allowCredentials;
  /// The set of allowed HTTP request headers. This configures the Access-Control-Allow-Headers header.
  final List<String>? allowHeaders;
  /// The set of allowed HTTP methods. This configures the Access-Control-Allow-Methods header.
  final List<String>? allowMethods;
  /// The set of allowed CORS origins. This configures the Access-Control-Allow-Origin header.
  final AppSpecServiceCorsAllowOrigins? allowOrigins;
  /// The set of HTTP response headers that browsers are allowed to access. This configures the Access-Control-Expose-Headers header.
  final List<String>? exposeHeaders;
  /// An optional duration specifying how long browsers can cache the results of a preflight request. This configures the Access-Control-Max-Age header. Example: `5h30m`.
  final String? maxAge;

  /// Creates a new [AppSpecServiceCors].
  /// [allowCredentials] Whether browsers should expose the response to the client-side JavaScript code when the request’s credentials mode is `include`. This configures the Access-Control-Allow-Credentials header.
  /// [allowHeaders] The set of allowed HTTP request headers. This configures the Access-Control-Allow-Headers header.
  /// [allowMethods] The set of allowed HTTP methods. This configures the Access-Control-Allow-Methods header.
  /// [allowOrigins] The set of allowed CORS origins. This configures the Access-Control-Allow-Origin header.
  /// [exposeHeaders] The set of HTTP response headers that browsers are allowed to access. This configures the Access-Control-Expose-Headers header.
  /// [maxAge] An optional duration specifying how long browsers can cache the results of a preflight request. This configures the Access-Control-Max-Age header. Example: `5h30m`.
  AppSpecServiceCors({
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

  factory AppSpecServiceCors.fromMap(Map<String, dynamic> map) {
    return AppSpecServiceCors(
      allowCredentials: map['allowCredentials'] == null ? null : map['allowCredentials'] as bool,
      allowHeaders: map['allowHeaders'] == null ? null : (map['allowHeaders'] as List).cast<String>(),
      allowMethods: map['allowMethods'] == null ? null : (map['allowMethods'] as List).cast<String>(),
      allowOrigins: map['allowOrigins'] == null ? null : AppSpecServiceCorsAllowOrigins.fromMap((map['allowOrigins'] as Map).cast<String, dynamic>()),
      exposeHeaders: map['exposeHeaders'] == null ? null : (map['exposeHeaders'] as List).cast<String>(),
      maxAge: map['maxAge'] == null ? null : map['maxAge'] as String,
    );
  }
}

