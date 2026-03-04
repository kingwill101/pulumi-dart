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
      allowCredentials: (() {
        final guardedValue = map['allowCredentials'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      allowHeaders: (() {
        final guardedValue = map['allowHeaders'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      allowMethods: (() {
        final guardedValue = map['allowMethods'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      allowOrigins: (() {
        final guardedValue = map['allowOrigins'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      exposeHeaders: (() {
        final guardedValue = map['exposeHeaders'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      maxAge: (() {
        final guardedValue = map['maxAge'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
    );
  }
}
