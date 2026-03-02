// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ApiCorsConfiguration {
  /// Whether credentials are included in the CORS request.
  final pulumi.Input<bool>? allowCredentials;
  /// Set of allowed HTTP headers.
  final pulumi.Input<List<String>>? allowHeaders;
  /// Set of allowed HTTP methods.
  final pulumi.Input<List<String>>? allowMethods;
  /// Set of allowed origins.
  final pulumi.Input<List<String>>? allowOrigins;
  /// Set of exposed HTTP headers.
  final pulumi.Input<List<String>>? exposeHeaders;
  /// Number of seconds that the browser should cache preflight request results.
  final pulumi.Input<int>? maxAge;

  /// Creates a new [ApiCorsConfiguration].
  /// [allowCredentials] Whether credentials are included in the CORS request.
  /// [allowHeaders] Set of allowed HTTP headers.
  /// [allowMethods] Set of allowed HTTP methods.
  /// [allowOrigins] Set of allowed origins.
  /// [exposeHeaders] Set of exposed HTTP headers.
  /// [maxAge] Number of seconds that the browser should cache preflight request results.
  ApiCorsConfiguration({
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
      'allowOrigins': ?allowOrigins,
      'exposeHeaders': ?exposeHeaders,
      'maxAge': ?maxAge,
    };
  }

  factory ApiCorsConfiguration.fromMap(Map<String, dynamic> map) {
    return ApiCorsConfiguration(
      allowCredentials: map['allowCredentials'] == null ? null : ((map['allowCredentials'] as bool).input()).input(),
      allowHeaders: map['allowHeaders'] == null ? null : (((map['allowHeaders'] as List).cast<String>()).input()).input(),
      allowMethods: map['allowMethods'] == null ? null : (((map['allowMethods'] as List).cast<String>()).input()).input(),
      allowOrigins: map['allowOrigins'] == null ? null : (((map['allowOrigins'] as List).cast<String>()).input()).input(),
      exposeHeaders: map['exposeHeaders'] == null ? null : (((map['exposeHeaders'] as List).cast<String>()).input()).input(),
      maxAge: map['maxAge'] == null ? null : ((map['maxAge'] as int).input()).input(),
    );
  }
}

