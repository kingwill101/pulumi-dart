// ignore_for_file: unused_element, unnecessary_cast


/// The CORS policy for the Cosmos DB database account.
class CorsPolicyResponse {
  /// The request headers that the origin domain may specify on the CORS request.
  final String? allowedHeaders;
  /// The methods (HTTP request verbs) that the origin domain may use for a CORS request.
  final String? allowedMethods;
  /// The origin domains that are permitted to make a request against the service via CORS.
  final String allowedOrigins;
  /// The response headers that may be sent in the response to the CORS request and exposed by the browser to the request issuer.
  final String? exposedHeaders;
  /// The maximum amount time that a browser should cache the preflight OPTIONS request.
  final double? maxAgeInSeconds;

  /// Creates a new [CorsPolicyResponse].
  /// [allowedHeaders] The request headers that the origin domain may specify on the CORS request.
  /// [allowedMethods] The methods (HTTP request verbs) that the origin domain may use for a CORS request.
  /// [allowedOrigins] The origin domains that are permitted to make a request against the service via CORS.
  /// [exposedHeaders] The response headers that may be sent in the response to the CORS request and exposed by the browser to the request issuer.
  /// [maxAgeInSeconds] The maximum amount time that a browser should cache the preflight OPTIONS request.
  CorsPolicyResponse({
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
      allowedHeaders: map['allowedHeaders'] == null ? null : map['allowedHeaders'] as String,
      allowedMethods: map['allowedMethods'] == null ? null : map['allowedMethods'] as String,
      allowedOrigins: map['allowedOrigins'] as String,
      exposedHeaders: map['exposedHeaders'] == null ? null : map['exposedHeaders'] as String,
      maxAgeInSeconds: map['maxAgeInSeconds'] == null ? null : map['maxAgeInSeconds'] as double,
    );
  }
}

