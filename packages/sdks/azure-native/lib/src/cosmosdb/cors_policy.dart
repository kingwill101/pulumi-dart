// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The CORS policy for the Cosmos DB database account.
class CorsPolicy {
  /// The request headers that the origin domain may specify on the CORS request.
  final pulumi.Input<String>? allowedHeaders;
  /// The methods (HTTP request verbs) that the origin domain may use for a CORS request.
  final pulumi.Input<String>? allowedMethods;
  /// The origin domains that are permitted to make a request against the service via CORS.
  final pulumi.Input<String> allowedOrigins;
  /// The response headers that may be sent in the response to the CORS request and exposed by the browser to the request issuer.
  final pulumi.Input<String>? exposedHeaders;
  /// The maximum amount time that a browser should cache the preflight OPTIONS request.
  final pulumi.Input<double>? maxAgeInSeconds;

  /// Creates a new [CorsPolicy].
  /// [allowedHeaders] The request headers that the origin domain may specify on the CORS request.
  /// [allowedMethods] The methods (HTTP request verbs) that the origin domain may use for a CORS request.
  /// [allowedOrigins] The origin domains that are permitted to make a request against the service via CORS.
  /// [exposedHeaders] The response headers that may be sent in the response to the CORS request and exposed by the browser to the request issuer.
  /// [maxAgeInSeconds] The maximum amount time that a browser should cache the preflight OPTIONS request.
  CorsPolicy({
    this.allowedHeaders,
    this.allowedMethods,
    required this.allowedOrigins,
    this.exposedHeaders,
    this.maxAgeInSeconds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allowedHeaders': ?allowedHeaders,
      'allowedMethods': ?allowedMethods,
      'allowedOrigins': allowedOrigins,
      'exposedHeaders': ?exposedHeaders,
      'maxAgeInSeconds': ?maxAgeInSeconds,
    };
  }

  factory CorsPolicy.fromMap(Map<String, dynamic> map) {
    return CorsPolicy(
      allowedHeaders: map['allowedHeaders'] == null ? null : (map['allowedHeaders'] as String).input(),
      allowedMethods: map['allowedMethods'] == null ? null : (map['allowedMethods'] as String).input(),
      allowedOrigins: (map['allowedOrigins'] as String).input(),
      exposedHeaders: map['exposedHeaders'] == null ? null : (map['exposedHeaders'] as String).input(),
      maxAgeInSeconds: map['maxAgeInSeconds'] == null ? null : (map['maxAgeInSeconds'] as double).input(),
    );
  }
}

