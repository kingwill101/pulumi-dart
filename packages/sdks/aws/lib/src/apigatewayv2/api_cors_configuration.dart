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
