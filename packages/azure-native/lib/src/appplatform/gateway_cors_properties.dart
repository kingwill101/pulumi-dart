// ignore_for_file: unused_element, unnecessary_cast


/// Cross-Origin Resource Sharing property
class GatewayCorsProperties {
  /// Whether user credentials are supported on cross-site requests. Valid values: `true`, `false`.
  final bool? allowCredentials;
  /// Allowed headers in cross-site requests. The special value `*` allows actual requests to send any header.
  final List<String>? allowedHeaders;
  /// Allowed HTTP methods on cross-site requests. The special value `*` allows all methods. If not set, `GET` and `HEAD` are allowed by default.
  final List<String>? allowedMethods;
  /// Allowed origin patterns to make cross-site requests.
  final List<String>? allowedOriginPatterns;
  /// Allowed origins to make cross-site requests. The special value `*` allows all domains.
  final List<String>? allowedOrigins;
  /// HTTP response headers to expose for cross-site requests.
  final List<String>? exposedHeaders;
  /// How long, in seconds, the response from a pre-flight request can be cached by clients.
  final int? maxAge;

  /// Creates a new [GatewayCorsProperties].
  /// [allowCredentials] Whether user credentials are supported on cross-site requests. Valid values: `true`, `false`.
  /// [allowedHeaders] Allowed headers in cross-site requests. The special value `*` allows actual requests to send any header.
  /// [allowedMethods] Allowed HTTP methods on cross-site requests. The special value `*` allows all methods. If not set, `GET` and `HEAD` are allowed by default.
  /// [allowedOriginPatterns] Allowed origin patterns to make cross-site requests.
  /// [allowedOrigins] Allowed origins to make cross-site requests. The special value `*` allows all domains.
  /// [exposedHeaders] HTTP response headers to expose for cross-site requests.
  /// [maxAge] How long, in seconds, the response from a pre-flight request can be cached by clients.
  GatewayCorsProperties({
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
      allowCredentials: map['allowCredentials'] == null ? null : map['allowCredentials'] as bool,
      allowedHeaders: map['allowedHeaders'] == null ? null : (map['allowedHeaders'] as List).cast<String>(),
      allowedMethods: map['allowedMethods'] == null ? null : (map['allowedMethods'] as List).cast<String>(),
      allowedOriginPatterns: map['allowedOriginPatterns'] == null ? null : (map['allowedOriginPatterns'] as List).cast<String>(),
      allowedOrigins: map['allowedOrigins'] == null ? null : (map['allowedOrigins'] as List).cast<String>(),
      exposedHeaders: map['exposedHeaders'] == null ? null : (map['exposedHeaders'] as List).cast<String>(),
      maxAge: map['maxAge'] == null ? null : map['maxAge'] as int,
    );
  }
}

