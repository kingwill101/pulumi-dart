// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The CORS policy for the Cosmos DB database account.
class CorsPolicyResponse {
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

  /// Creates a new [CorsPolicyResponse].
  /// [allowedHeaders] The request headers that the origin domain may specify on the CORS request.
  /// [allowedMethods] The methods (HTTP request verbs) that the origin domain may use for a CORS request.
  /// [allowedOrigins] The origin domains that are permitted to make a request against the service via CORS.
  /// [exposedHeaders] The response headers that may be sent in the response to the CORS request and exposed by the browser to the request issuer.
  /// [maxAgeInSeconds] The maximum amount time that a browser should cache the preflight OPTIONS request.
  const CorsPolicyResponse({
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

  factory CorsPolicyResponse.fromMap(Map<String, dynamic> map) {
    return CorsPolicyResponse(
      allowedHeaders: (() { final guardedValue = map['allowedHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      allowedMethods: (() { final guardedValue = map['allowedMethods']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      allowedOrigins: pulumi.Input.fromValue(map['allowedOrigins'] as String),
      exposedHeaders: (() { final guardedValue = map['exposedHeaders']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      maxAgeInSeconds: (() { final guardedValue = map['maxAgeInSeconds']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}
