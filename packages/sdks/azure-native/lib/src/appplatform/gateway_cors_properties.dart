// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Cross-Origin Resource Sharing property
class GatewayCorsProperties {
  /// Whether user credentials are supported on cross-site requests. Valid values: `true`, `false`.
  final pulumi.Input<bool?>? allowCredentials;
  /// Allowed headers in cross-site requests. The special value `*` allows actual requests to send any header.
  final pulumi.Input<List<String>?>? allowedHeaders;
  /// Allowed HTTP methods on cross-site requests. The special value `*` allows all methods. If not set, `GET` and `HEAD` are allowed by default.
  final pulumi.Input<List<String>?>? allowedMethods;
  /// Allowed origin patterns to make cross-site requests.
  final pulumi.Input<List<String>?>? allowedOriginPatterns;
  /// Allowed origins to make cross-site requests. The special value `*` allows all domains.
  final pulumi.Input<List<String>?>? allowedOrigins;
  /// HTTP response headers to expose for cross-site requests.
  final pulumi.Input<List<String>?>? exposedHeaders;
  /// How long, in seconds, the response from a pre-flight request can be cached by clients.
  final pulumi.Input<int?>? maxAge;

  /// Creates a new [GatewayCorsProperties].
  /// [allowCredentials] Whether user credentials are supported on cross-site requests. Valid values: `true`, `false`.
  /// [allowedHeaders] Allowed headers in cross-site requests. The special value `*` allows actual requests to send any header.
  /// [allowedMethods] Allowed HTTP methods on cross-site requests. The special value `*` allows all methods. If not set, `GET` and `HEAD` are allowed by default.
  /// [allowedOriginPatterns] Allowed origin patterns to make cross-site requests.
  /// [allowedOrigins] Allowed origins to make cross-site requests. The special value `*` allows all domains.
  /// [exposedHeaders] HTTP response headers to expose for cross-site requests.
  /// [maxAge] How long, in seconds, the response from a pre-flight request can be cached by clients.
  const GatewayCorsProperties({
    this.allowCredentials,
    this.allowedHeaders,
    this.allowedMethods,
    this.allowedOriginPatterns,
    this.allowedOrigins,
    this.exposedHeaders,
    this.maxAge,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowCredentials': ?allowCredentials,
      'allowedHeaders': ?allowedHeaders,
      'allowedMethods': ?allowedMethods,
      'allowedOriginPatterns': ?allowedOriginPatterns,
      'allowedOrigins': ?allowedOrigins,
      'exposedHeaders': ?exposedHeaders,
      'maxAge': ?maxAge,
    };
  }

  factory GatewayCorsProperties.fromMap(Map<String, dynamic> map) {
    return GatewayCorsProperties(
      allowCredentials: (() { final guardedValue = map['allowCredentials']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      allowedHeaders: (() { final guardedValue = map['allowedHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      allowedMethods: (() { final guardedValue = map['allowedMethods']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      allowedOriginPatterns: (() { final guardedValue = map['allowedOriginPatterns']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      allowedOrigins: (() { final guardedValue = map['allowedOrigins']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      exposedHeaders: (() { final guardedValue = map['exposedHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      maxAge: (() { final guardedValue = map['maxAge']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
    );
  }
}
