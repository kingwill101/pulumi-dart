// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The settings for the CORS configuration of the service instance.
class CorsConfiguration {
  /// If credentials are allowed via CORS.
  final pulumi.Input<bool>? allowCredentials;

  /// The headers to be allowed via CORS.
  final pulumi.Input<List<String>>? headers;

  /// The max age to be allowed via CORS.
  final pulumi.Input<int>? maxAge;

  /// The methods to be allowed via CORS.
  final pulumi.Input<List<String>>? methods;

  /// The origins to be allowed via CORS.
  final pulumi.Input<List<String>>? origins;

  /// Creates a new [CorsConfiguration].
  /// [allowCredentials] If credentials are allowed via CORS.
  /// [headers] The headers to be allowed via CORS.
  /// [maxAge] The max age to be allowed via CORS.
  /// [methods] The methods to be allowed via CORS.
  /// [origins] The origins to be allowed via CORS.
  CorsConfiguration({
    this.allowCredentials,
    this.headers,
    this.maxAge,
    this.methods,
    this.origins,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowCredentials': ?allowCredentials,
      'headers': ?headers,
      'maxAge': ?maxAge,
      'methods': ?methods,
      'origins': ?origins,
    };
  }

  factory CorsConfiguration.fromMap(Map<String, dynamic> map) {
    return CorsConfiguration(
      allowCredentials: (() {
        final guardedValue = map['allowCredentials'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      headers: (() {
        final guardedValue = map['headers'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      maxAge: (() {
        final guardedValue = map['maxAge'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      methods: (() {
        final guardedValue = map['methods'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      origins: (() {
        final guardedValue = map['origins'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
    );
  }
}
