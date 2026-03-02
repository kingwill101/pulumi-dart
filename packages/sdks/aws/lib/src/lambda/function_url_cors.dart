// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class FunctionUrlCors {
  /// Whether to allow cookies or other credentials in requests to the function URL.
  final pulumi.Input<bool>? allowCredentials;
  /// HTTP headers that origins can include in requests to the function URL.
  final pulumi.Input<List<String>>? allowHeaders;
  /// HTTP methods that are allowed when calling the function URL.
  final pulumi.Input<List<String>>? allowMethods;
  /// Origins that can access the function URL.
  final pulumi.Input<List<String>>? allowOrigins;
  /// HTTP headers in your function response that you want to expose to origins that call the function URL.
  final pulumi.Input<List<String>>? exposeHeaders;
  /// Maximum amount of time, in seconds, that web browsers can cache results of a preflight request. Maximum value is `86400`.
  final pulumi.Input<int>? maxAge;

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
    return <String, dynamic>{
      'allowCredentials': ?allowCredentials,
      'allowHeaders': ?allowHeaders,
      'allowMethods': ?allowMethods,
      'allowOrigins': ?allowOrigins,
      'exposeHeaders': ?exposeHeaders,
      'maxAge': ?maxAge,
    };
  }

  factory FunctionUrlCors.fromMap(Map<String, dynamic> map) {
    return FunctionUrlCors(
      allowCredentials: map['allowCredentials'] == null ? null : (map['allowCredentials'] as bool).input(),
      allowHeaders: map['allowHeaders'] == null ? null : ((map['allowHeaders'] as List).cast<String>()).input(),
      allowMethods: map['allowMethods'] == null ? null : ((map['allowMethods'] as List).cast<String>()).input(),
      allowOrigins: map['allowOrigins'] == null ? null : ((map['allowOrigins'] as List).cast<String>()).input(),
      exposeHeaders: map['exposeHeaders'] == null ? null : ((map['exposeHeaders'] as List).cast<String>()).input(),
      maxAge: map['maxAge'] == null ? null : (map['maxAge'] as int).input(),
    );
  }
}

